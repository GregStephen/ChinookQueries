select e.FirstName + ' ' + e.LastName as SalesAgent,
	sum(i.Total) as TotalSales
from Employee e
	join Customer c
	on e.EmployeeId = c.SupportRepId
	join Invoice i
	on c.CustomerId = i.CustomerId
group by e.FirstName + ' ' + e.LastName