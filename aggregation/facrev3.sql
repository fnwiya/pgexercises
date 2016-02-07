SELECT
name,
rank
FROM (
SELECT 
  facs.name AS name,
  rank() over (ORDER BY sum(CASE WHEN memid = 0 THEN slots * facs.guestcost ELSE slots * facs.membercost END) DESC)  AS rank
FROM cd.bookings bks
INNER JOIN cd.facilities facs
USING (facid)
GROUP BY facs.name
) as ranked
WHERE rank <= 3
ORDER BY rank, name;
