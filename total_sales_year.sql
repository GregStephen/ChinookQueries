select year(InvoiceDate) as InvoiceYear,
	sum(total) as TotalSales
from Invoice
where year(InvoiceDate) = 2009 or year(InvoiceDate) = 2011
group by year(InvoiceDate)