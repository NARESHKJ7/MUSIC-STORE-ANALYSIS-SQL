select  billing_country, sum(total) as TOTAL_INVOICE
from invoice
group by billing_country
order by TOTAL_INVOICE desc
limit 3