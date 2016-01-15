WITH bookings AS (
SELECT
  facid
  ,EXTRACT(month FROM starttime) AS month
  ,slots
FROM
  cd.bookings
WHERE
  starttime >= '2012-01-01'
  AND
  starttime < '2013-1-01'
  )
SELECT
  facid
  ,month
  ,SUM(slots)
FROM
  bookings
GROUP BY
  facid, month
UNION ALL
SELECT
  facid
  ,null
  ,SUM(slots)
FROM
  bookings
GROUP BY
  facid
UNION ALL
SELECT
  NULL
  ,NULL
  ,SUM(slots)
FROM
  bookings
ORDER BY
  facid, month;
