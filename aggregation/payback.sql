SELECT
  facs.name AS name,
  facs.initialoutlay/(sum(CASE WHEN memid = 0 THEN slots * guestcost
        ELSE slots * membercost
        END)/3 - facs.monthlymaintenance) AS revenue
FROM cd.bookings bks
INNER JOIN cd.facilities facs
USING(facid)
GROUP BY facs.facid
ORDER BY name;
