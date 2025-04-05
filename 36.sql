select name from ships where name IN (select class from classes)
UNION
select ship from outcomes where ship in (select class from classes)
