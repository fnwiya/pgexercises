SELECT 
name,
month,
round((100*slots)/cast(25*(cast((month + interval '1 month') as date) - cast (month as date)) as numeric),1) as utilisation
FROM(
  SELECT 
  facs.name AS name, 
  date_trunc('month', starttime) AS month, 
  SUM(slots) AS slots
  FROM cd.bookings bks
  INNER JOIN cd.facilities facs
  USING(facid)
  GROUP BY facs.facid, month) AS inn
ORDER BY name, month;
