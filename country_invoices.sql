select BillingCountry, count(*) as NumberOfInvoices
from Invoice
group by BillingCountry