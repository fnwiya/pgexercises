SELECT
LPAD(CAST(zipcode AS char(5)), 5, '0') zip
FROM cd.members
ORDER BY zip;
