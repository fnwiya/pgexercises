--wrong
SELECT
  (mem.firstname
	|| ' '
	|| mem.surname) as member
  ,fac.name AS facilitie
  ,(SELECT
	bookingcost AS cost
  FROM (
	SELECT
	  (CASE
		WHEN mem.memid = 0 THEN
		fac.guestcost * boo.slots
		ELSE
		fac.membercost * boo.slots
		END) AS bookingcost
	FROM
	  cd.facilities fac
	  ) a
  WHERE
	(CASE
	  WHEN mem.memid = 0 THEN
	  bookingcost > 30
	  ELSE
	  bookingcost > 30
	  END)
	) b
FROM
  cd.members mem
  INNER JOIN
  cd.bookings boo
  USING(memid)
WHERE
  boo.starttime >= '2012-09-14'
  AND
  boo.starttime < '2012-09-15'
ORDER BY
  cost DESC;
