select name from classes
join ships
on ships.class = classes.class
where bore = 16
union
select ship from outcomes
join classes
on outcomes.ship = classes.class
where classes.bore = 16
