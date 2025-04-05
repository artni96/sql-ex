select distinct ship from (
select ship, result, [date] from outcomes join battles bat_1 on battle = name
where outcomes.result = 'damaged'
and ship in (select ship from outcomes join battles on battle = name where bat_1.[date] < battles.[date])
) result_cte
