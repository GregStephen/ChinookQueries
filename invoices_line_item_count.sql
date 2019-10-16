select i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.BillingState,
	i.BillingCountry,
	i.BillingPostalCode,
	i.Total,
	count(*) as TotalInvoiceLines
from Invoice i
	join InvoiceLine il
	on i.InvoiceId = il.InvoiceId
group by i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.BillingState,
	i.BillingCountry,
	i.BillingPostalCode,
	i.Total

