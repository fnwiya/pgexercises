SELECT
memid,
translate(telephone, '-() ', '') AS telephone
FROM cd.members
ORDER BY memid;
