SELECT
  DISTINCT _by.firstname AS firstname
  ,_by.surname AS surname
FROM
  cd.members _to
  INNER JOIN
  cd.members _by
  ON _by.memid = _to.recommendedby
ORDER BY
  surname
  ,firstname;
