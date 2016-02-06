SELECT
row_number() over(ORDER BY mems.joindate),
mems.firstname,
mems.surname
FROM cd.members mems
ORDER BY mems.joindate;
