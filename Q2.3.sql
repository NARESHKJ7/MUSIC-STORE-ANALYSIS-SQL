select name, milliseconds
from track
where milliseconds > (select avg(milliseconds) as AVERAGE_LENGTH from track)
order by milliseconds desc