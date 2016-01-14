SELECT
  facs.name
  ,sum(CASE
	WHEN memid = 0 THEN
	slots * facs.guestcost
	ELSE
	slots * membercost
	END) AS revenue
FROM
  cd.bookings bks
  INNER JOIN
  cd.facilities facs
  USING(facid)
GROUP BY
  facs.name
ORDER BY
  revenue;
