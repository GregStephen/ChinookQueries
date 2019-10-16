select year(InvoiceDate) as InvoiceYear, count(*) as NumberOfInvoices
from Invoice
where year(InvoiceDate) = 2009 or year(InvoiceDate) = 2011
group by year(InvoiceDate)
having count(*) > 1