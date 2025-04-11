with res as(
select -sum(out) result from outcome_o where date < '2001-04-15'
union
select sum(inc) result from income_o where date < '2001-04-15'
)
select sum(result) remain from res
