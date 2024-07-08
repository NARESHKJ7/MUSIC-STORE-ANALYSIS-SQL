with customer_with_country as(
	select customer.customer_id,first_name,last_name,billing_country,sum(total) as total_spending,
	row_number() over(partition by billing_country order by sum(total) desc) as RowNo
	from invoice
	join customer on customer.customer_id = invoice.customer_id
	group by 1,2,3,4
	order by 4 asc, 5 desc
)
select * from  customer_with_country where RowNo <= 1