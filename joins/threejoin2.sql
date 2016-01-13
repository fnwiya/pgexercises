SELECT
  (mem.firstname
	|| ' '
	|| mem.surname) as member
  ,fac.name AS facilitie
  ,(CASE
	WHEN mem.memid = 0 THEN
	fac.guestcost * boo.slots
	ELSE
	fac.membercost * boo.slots
	END) AS cost
FROM
  cd.members mem
  INNER JOIN
  cd.bookings boo
  USING(memid)
  INNER JOIN
  cd.facilities fac
  USING(facid)
WHERE
  (CASE
	WHEN mem.memid = 0 THEN
	fac.guestcost * boo.slots > 30
	ELSE
	fac.membercost * boo.slots > 30
	END)
  AND
  boo.starttime >= '2012-09-14'
  AND
  boo.starttime < '2012-09-15'
ORDER BY
  cost DESC;
