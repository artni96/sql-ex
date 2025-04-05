select maker, type
from product
where maker in (
select maker
from (
select maker, type
from product
group by maker, type
)this_table
group by maker
having count(maker) = 1
)
group by maker, type
having count(model) > 1