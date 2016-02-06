SELECT
facid,
total
FROM (
SELECT 
  facid,
sum(slots) total,
rank() over (ORDER BY sum(slots) DESC) rank
FROM cd.bookings
GROUP BY facid
) as ranked
WHERE rank = 1;
