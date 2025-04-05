Select distinct o.battle from classes c
join ships sh
on sh.class = c.class
join outcomes o
on o.ship = sh.name
where c.class = 'Kongo'
