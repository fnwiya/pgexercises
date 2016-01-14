SELECT
  facid
  ,EXTRACT(month FROM starttime) AS month
  ,SUM(slots) AS "Total Slots"
FROM
  cd.bookings
WHERE
  starttime >= '2012-01-01'
  AND
  starttime < '2013-1-01'
GROUP BY
  facid, month
ORDER BY
  facid, month;
