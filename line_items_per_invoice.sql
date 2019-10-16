select InvoiceId,  count(*) as NumberOfInvoiceLines
from InvoiceLine
group by InvoiceId