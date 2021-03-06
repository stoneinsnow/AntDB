--
-- XC_NOTRANS_BLOCK
--

-- This file contains tests for testing statements that cannot be run
-- within a transaction block. They verify that the cluster is consistent
-- even if one particular node aborts and others succeed.

------------
-- Test#1 : CREATE TABLESPACE
------------

BEGIN;
CREATE TABLESPACE xc_testspace1 LOCATION '/home/mass2/regress/testtablespace';
ROLLBACK;

select exec_util_on_node('CREATE TABLESPACE xc_testspace1 LOCATION $LOC$/home/mass2/regress/testtablespace$LOC$', 1);
-- This should fail because we have one tablespace created on data node 1.
CREATE TABLESPACE xc_testspace1 LOCATION '/home/mass2/regress/testtablespace';
-- Drop tablespace on data node 1.
select exec_util_on_node('drop TABLESPACE xc_testspace1 ', 1);
-- Now this should work
CREATE TABLESPACE xc_testspace1 LOCATION '/home/mass2/regress/testtablespace';



------------
-- Test#2 CREATE DATABASE
------------

BEGIN;
CREATE DATABASE xc_db tablespace xc_testspace1;
ROLLBACK;
-- Drop tablespace on data node 1.
select exec_util_on_node('drop TABLESPACE xc_testspace1 ', 1);
-- This should not work because there is no tablespace on datanode1
CREATE DATABASE xc_db tablespace xc_testspace1;
select exec_util_on_node('CREATE TABLESPACE xc_testspace1 LOCATION $LOC$/home/mass2/regress/testtablespace$LOC$', 1);
-- This should work
CREATE DATABASE xc_db tablespace xc_testspace1;



------------
-- Test#3: ALTER DATABASE SET TABLESPACE
------------


BEGIN;
alter database xc_db set tablespace xc_testspace1;
ROLLBACK;

-- Recreate database on global tablespace.
clean connection to all for database xc_db;
drop database xc_db;
CREATE DATABASE xc_db;


-- Insert some objects.
\c xc_db
create table xc_tab1 (id int);
insert into xc_tab1 select generate_series(1, 50, 1);
\c cidb
clean connection to all for database xc_db;


-- Drop tablespace on data node 1.
select exec_util_on_node('drop TABLESPACE xc_testspace1 ', 1);

clean connection to all for database xc_db;
select pool_close_idle_conn();
-- This should error out, since we don't have tablespace on data node 1
alter database xc_db set tablespace xc_testspace1;

select exec_util_on_node('CREATE TABLESPACE xc_testspace1 LOCATION $LOC$/home/mass2/regress/testtablespace$LOC$', 1);

-- Now this should work.
alter database xc_db set tablespace xc_testspace1;

-- Verify data in the objects created earlier
\c xc_db
select * from xc_tab1 order by id;
\c cidb
clean connection to all for database xc_db;  
select pool_close_idle_conn();
drop database xc_db;
drop tablespace xc_testspace1;
