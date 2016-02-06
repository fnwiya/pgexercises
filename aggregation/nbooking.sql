SELECT
mems.surname,
mems.firstname,
mems.memid,
min(bks.starttime) as starttime
FROM cd.bookings bks
INNER JOIN cd.members mems
USING (memid)
WHERE starttime >= '2012-09-01'
GROUP BY mems.surname, mems.firstname, mems.memid
ORDER BY mems.memid;
