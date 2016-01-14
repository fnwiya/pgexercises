select 
  name
  ,revenue 
from (
  select 
	facs.name
	,sum(case 
	  when memid = 0 then
	    slots * facs.guestcost
	  else 
  	    slots * membercost
	  end) as revenue
  from cd.bookings bks
	inner join cd.facilities facs
	USING(facid)
  group by facs.name
	) as agg 
where 
  revenue < 1000
order by 
  revenue;     
