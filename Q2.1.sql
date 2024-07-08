select distinct email, first_name, last_name
from customer
join invoice on customer.customer_id = invoice.customer_id
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
join track on invoice_line.track_id = track.track_id
join genre on track.genre_id = genre.genre_id
where genre.name = 'Rock'
order by email asc
  --or--
	
where track_id in(
	select track_id from track
	join genre on track.genre_id = genre.genre_id
	where genre.name = 'Rock'
)
order by email ;