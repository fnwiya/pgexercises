SELECT
(SELECT COUNT(*) FROM cd.members a) as count,
mems.firstname,
mems.surname
FROM cd.members mems
ORDER BY mems.joindate;
