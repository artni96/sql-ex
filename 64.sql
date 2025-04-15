with res as (
select
case when i.point is not null then i.point else o.point end point,
case when i.date is not null then i.date else o.date end date,
case when inc is null then 'out' else 'inc' end operation,
case when inc is not null then inc else out end money_sum
from income i
full join outcome o
on i.point = o.point and i.date = o.date
where (i.date is null and o.date is not null) or (o.date is null and i.date is not null)
)
select point, date, operation, sum(money_sum)
from res
group by date, point, operation
