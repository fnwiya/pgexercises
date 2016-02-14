SELECT starttime, starttime + slots*(interval '30 minutes') endtime
FROM cd.bookings
ORDER BY endtime DESC
LIMIT 10;
