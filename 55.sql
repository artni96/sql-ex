select c.class, min(sh.launched)
from classes c
left join ships sh
on sh.class = c.class
group by c.class
