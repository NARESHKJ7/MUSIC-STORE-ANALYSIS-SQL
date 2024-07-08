select billing_city, sum(total) as TOTAL_INVOICE_CITY
from invoice
group by billing_city
order by TOTAL_INVOICE_CITY desc 
limit 1