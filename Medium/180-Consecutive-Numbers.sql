--180. Consecutive Numbers

WITH CTE as(select id,num,lag(num,1) over (order by id) as prev_value
,lead(num,1) over(order by id) as next_value from logs)
select distinct num as ConsecutiveNums
from CTE
where num = prev_value and num = next_value
;