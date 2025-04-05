select distinct name
from classes c
join ships sh
on sh.class = c.class
WHERE
case when country is Null then 'Japan' ELSE country END='Japan'
and
case when numGuns is Null then 9 else numGuns end>=9
and CASE WHEN BORE is NULL  THEN 18 ELSE bore END < 19
and case when type is null then 'bb' else type end  = 'bb'
AND CASE WHEN displacement is NULL THEN 65000 ELSE displacement END <=65000
