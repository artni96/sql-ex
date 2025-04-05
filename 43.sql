SELECT name from battles
group by name, date
having year (date) not in (select launched from ships where launched is not null)
