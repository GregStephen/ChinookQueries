select BillingCountry,
	sum(Total) as TotalSales
from Invoice
group by BillingCountry