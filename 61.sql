select sum(coalesce(inc, 0) - coalesce(out, 0))
from income_o i
full join outcome_o o
on o.date = i.date and i.point = o.point
