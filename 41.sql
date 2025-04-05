select maker, case when
max(case when price is null then 1 else 0 end) = 0 then max(price) end price from (
select product.maker, product.model, pc.price
from product
join pc on product.model = pc.model
union
select product.maker, product.model, laptop.price
from product
join laptop on product.model = laptop.model
union
select product.maker, product.model, printer.price
from product
join printer on product.model = printer.model
)this_table group by maker