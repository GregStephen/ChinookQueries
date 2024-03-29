declare @maxNumber int

select t.Name,
	count(*) as NumberSold
into #temp
from Invoice i
	join InvoiceLine il
	on i.InvoiceId = il.InvoiceId
	join Track t
	on il.TrackId = t.TrackId
where year(i.InvoiceDate) = 2013
group by t.Name

select @maxNumber = max(NumberSold)
from #temp results

select Name,
	 NumberSold
from #temp 
where NumberSold= @maxNumber
 

 -- drop table #temp