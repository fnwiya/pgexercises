SELECT
mems.firstname,
mems.surname,
((sum(bks.slots)+10)/20)*10 hours,
rank() over (ORDER BY ((sum(bks.slots)+10)/20)*10 DESC) rank
FROM cd.bookings bks
INNER JOIN cd.members mems
USING (memid)
GROUP BY mems.memid
ORDER BY rank, surname;
