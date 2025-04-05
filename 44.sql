select ship from outcomes where ship like 'R%'
union
select name from ships where name like 'R%'
