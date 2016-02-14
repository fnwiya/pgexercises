SELECT
substr(surname, 1, 1) AS letter,
count(*) AS count
FROM cd.members
GROUP BY letter
ORDER BY letter;
