with res as (
select point, sum(inc) sum from income_o where date < '2001-04-15' group by point
union
select point, -sum(out) sum from outcome_o where date < '2001-04-15'
group by point
)
select point, sum(sum) from res
group by point
