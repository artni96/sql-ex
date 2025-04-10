with t1 as(
select case when o.point is not Null then o.point else i.point end point,
coalesce (i.inc, 0) - coalesce (o.out, 0) remain
from outcome_o o
full join income_o i
on i.point = o.point and i.date = o.date
)
select point, sum(remain) remain from t1
group by point
