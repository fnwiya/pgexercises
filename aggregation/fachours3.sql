SELECT 
facs.facid,
facs.name,
trim(to_char(sum(bks.slots)/2.0, '999999999999999D99')) as "Total Hours"
FROM
cd.bookings bks
INNER JOIN cd.facilities facs
USING (facid)
GROUP BY facs.facid, facs.name
ORDER BY
facs.facid;
