SELECT 
  starttime AS start
  ,name 
FROM 
  cd.bookings 
  INNER JOIN (
  SELECT
	facid
	,name
  FROM
	cd.facilities
  WHERE
	name like '%Tennis Court%'
	)fac USING(facid)
WHERE starttime >= '2012-09-21' 
  AND starttime < '2012-09-22' 
ORDER BY starttime;
