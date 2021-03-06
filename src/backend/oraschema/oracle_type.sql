/*
 * Oracle Types
 *
 * Copyright (c) 1996-2013, PostgreSQL Global Development Group
 * Copyright (c) 2014-2016, ADB Development Group
 *
 * src/backend/oraschema/oracle_type.sql
 */

/* CREATE CAST FOR NVARCHAR2 */
CREATE CAST (nvarchar2 AS text) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (text AS nvarchar2) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (nvarchar2 AS bpchar) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (bpchar AS nvarchar2) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (nvarchar2 AS varchar) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (varchar AS nvarchar2) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (nvarchar2 AS real) WITH INOUT AS IMPLICIT;

CREATE CAST (real AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS double precision) WITH INOUT AS IMPLICIT;

CREATE CAST (double precision AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS integer) WITH INOUT AS IMPLICIT;

CREATE CAST (integer AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS smallint) WITH INOUT AS IMPLICIT;

CREATE CAST (smallint AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS bigint) WITH INOUT AS IMPLICIT;

CREATE CAST (bigint AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS numeric) WITH INOUT AS IMPLICIT;

CREATE CAST (numeric AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS date) WITH INOUT AS IMPLICIT;

CREATE CAST (date AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS timestamp) WITH INOUT AS IMPLICIT;

CREATE CAST (timestamp AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS timestamptz) WITH INOUT AS IMPLICIT;

CREATE CAST (timestamptz AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS interval) WITH INOUT AS IMPLICIT;

CREATE CAST (interval AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS nvarchar2) WITH FUNCTION pg_catalog.nvarchar2(nvarchar2, integer, boolean) AS IMPLICIT;

/* CREATE CAST FOR VARCHAR2 */
CREATE CAST (varchar2 AS text) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (text AS varchar2) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (varchar2 AS bpchar) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (bpchar AS varchar2) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (varchar2 AS varchar) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (varchar AS varchar2) WITHOUT FUNCTION AS IMPLICIT;

CREATE CAST (varchar2 AS real) WITH INOUT AS IMPLICIT;

CREATE CAST (real AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS double precision) WITH INOUT AS IMPLICIT;

CREATE CAST (double precision AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS integer) WITH INOUT AS IMPLICIT;

CREATE CAST (integer AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS smallint) WITH INOUT AS IMPLICIT;

CREATE CAST (smallint AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS bigint) WITH INOUT AS IMPLICIT;

CREATE CAST (bigint AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS numeric) WITH INOUT AS IMPLICIT;

CREATE CAST (numeric AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS date) WITH INOUT AS IMPLICIT;

CREATE CAST (date AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS timestamp) WITH INOUT AS IMPLICIT;

CREATE CAST (timestamp AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS timestamptz) WITH INOUT AS IMPLICIT;

CREATE CAST (timestamptz AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS interval) WITH INOUT AS IMPLICIT;

CREATE CAST (interval AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS varchar2) WITH FUNCTION pg_catalog.varchar2(varchar2, integer, boolean) AS IMPLICIT;

/* CREATE CAST FOR RID */
CREATE CAST (rid AS varchar) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar AS rid) WITH INOUT AS IMPLICIT;

CREATE CAST (rid AS varchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (varchar2 AS rid) WITH INOUT AS IMPLICIT;

CREATE CAST (rid AS nvarchar2) WITH INOUT AS IMPLICIT;

CREATE CAST (nvarchar2 AS rid) WITH INOUT AS IMPLICIT;

CREATE CAST (rid AS bpchar) WITH INOUT AS IMPLICIT;

CREATE CAST (bpchar AS rid) WITH INOUT AS IMPLICIT;

