CREATE OR REPLACE FUNCTION libjs4eu.h3.h3ToChildren(h3Index STRING, resolution NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.h3ToChildren(h3Index,resolution);
"""
OPTIONS (
  library=["gs://bigquery-jslibs/h3-js.umd.js"]
);