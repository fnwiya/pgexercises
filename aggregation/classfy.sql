SELECT
name,
CASE 
WHEN class = 1 THEN 'high'
WHEN class = 2 THEN 'average'
ELSE 'low'
END revenue
FROM (
SELECT
  facs.name AS name,
NTILE(3) OVER (ORDER BY sum(CASE WHEN memid = 0 THEN slots * guestcost
ELSE slots * membercost
END) DESC) AS class
FROM cd.bookings bks
INNER JOIN cd.facilities facs
USING(facid)
GROUP BY facs.name
) AS subq
ORDER BY class, name;
