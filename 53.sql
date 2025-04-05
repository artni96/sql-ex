Select cast(avg(numGuns+0.00) as decimal(4,2))
from classes
where type = 'bb'
