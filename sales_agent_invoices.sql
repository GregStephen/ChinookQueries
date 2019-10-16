select e.FirstName + ' ' + e.LastName as FullName, i.*
from Employee e
	join Customer c
	on e.EmployeeId = c.SupportRepId
	join Invoice i
	on c.CustomerId = i.CustomerId
where e.Title = 'Sales Support Agent'
