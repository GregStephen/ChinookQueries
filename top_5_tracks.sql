select top(5) t.Name,
	count(*) as NumberSold
from InvoiceLine i
	join Track t
	on i.TrackId = t.TrackId
group by t.Name
order by 2 desc
