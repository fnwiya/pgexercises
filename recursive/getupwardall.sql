WITH recursive recommenders(recommender, member) AS (
SELECT recommendedby, memid
FROM cd.members
UNION ALL
SELECT mems.recommendedby, recs.member
FROM recommenders recs
INNER JOIN cd.members mems
ON mems.memid = recs.recommender
)
SELECT recs.member member, recs.recommender, mems.firstname, mems.surname
FROM recommenders recs
INNER JOIN cd.members mems
ON recs.recommender = mems.memid
WHERE recs.member = 22 OR recs.member = 12
ORDER BY recs.member ASC, recs.recommender DESC;
