CREATE OR REPLACE FUNCTION libjs4eu.h3.h3IsResClassIII(h3Index STRING)
 RETURNS BOOLEAN
 LANGUAGE js AS
"""
return h3.h3IsResClassIII(h3Index);
"""
OPTIONS (
  library=["gs://bigquery-jslibs/h3-js.umd.js"]
);