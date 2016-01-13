SELECT
  DISTINCT mem.firstname AS memfname
  ,mem.surname AS memsname
  ,rec.firstname AS recfname
  ,rec.surname AS recsname
FROM
  cd.members mem
  LEFT JOIN
  cd.members rec
  ON rec.memid = mem.recommendedby
ORDER BY
  mem.surname
  ,mem.firstname;
