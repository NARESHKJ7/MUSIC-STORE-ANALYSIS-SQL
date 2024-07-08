select billing_country, count(billing_country) as INVOICE_COUNT
from invoice
group by billing_country
order by INVOICE_COUNT desc