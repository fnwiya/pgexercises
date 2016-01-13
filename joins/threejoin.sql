SELECT
  DISTINCT
  (firstname
	|| ' '
	|| surname) as member
  ,name AS facilitie
FROM
  cd.members
  INNER JOIN
  cd.bookings
  USING(memid)
  INNER JOIN
  cd.facilities
  USING(facid)
WHERE
name like 'Tennis%'
ORDER BY
  member;
