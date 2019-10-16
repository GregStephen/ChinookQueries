select i.Total, 
	c.FirstName + ' ' + c.LastName as Customer, 
	c.Country, 
	e.FirstName + ' ' + e.LastName as SalesAgent
from Invoice i
	join Customer c
	on i.CustomerId = c.CustomerId
	join Employee e
	on c.SupportRepId = e.EmployeeId
order by 1