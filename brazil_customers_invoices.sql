Select c.FirstName + ' ' + c.LastName as FullName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
From Customer c
	join Invoice i 
	on i.CustomerId = c.CustomerId
Where c.Country = 'Brazil'
	