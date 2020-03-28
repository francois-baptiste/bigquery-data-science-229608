CREATE OR REPLACE FUNCTION geolib.h3.h3ToChildren(h3Index STRING, resolution NUMERIC)
 RETURNS ARRAY<STRING>
 LANGUAGE js AS
"""
return h3.h3ToChildren(h3Index,resolution);
"""
OPTIONS (
  library=["gs://bigquery-geolib/h3-js.umd.js"]
);