SELECT
  DISTINCT
  (mem.firstname
	|| ' '
	|| mem.surname) as member
  ,(SELECT
	(rec.firstname
	  || ' '
	  || rec.surname) as recommender
  FROM
	cd.members rec
  WHERE
	mem.recommendedby = rec.memid
	)
FROM
  cd.members mem
ORDER BY
  member
