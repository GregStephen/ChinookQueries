select top(1) e.FirstName + ' ' + '"THE BADDEST BITCH"' + ' ' + e.LastName as SalesAgent,
	sum(i.total) as TotalSales
from Employee e
	join Customer c
	on e.EmployeeId = c.SupportRepId
	join Invoice i
	on c.CustomerId = i.CustomerId
group by e.FirstName + ' ' + '"THE BADDEST BITCH"' + ' ' + e.LastName