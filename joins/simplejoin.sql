SELECT starttime FROM cd.bookings LEFT JOIN cd.members USING(memid) WHERE surname = 'Farrell' AND firstname = 'David';
