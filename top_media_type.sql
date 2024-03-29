select top(1) m.Name,
	count(*) as NumberSold
from InvoiceLine i
	join Track t
	on i.TrackId = t.TrackId
	join MediaType m
	on t.MediaTypeId = m.MediaTypeId
group by m.Name
order by 2 desc