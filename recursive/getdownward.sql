WITH recursive recommendeds(memid) AS (
SELECT memid FROM cd.members WHERE recommendedby = 1
UNION ALL
SELECT mems.memid
FROM recommendeds recs
INNER JOIN cd.members mems
ON mems.recommendedby = recs.memid
)
SELECT recs.memid, mems.firstname, mems.surname
FROM recommendeds recs
INNER JOIN cd.members mems ON recs.memid = mems.memid
ORDER BY memid;
