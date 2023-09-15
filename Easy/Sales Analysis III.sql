select distinct p.product_id,p.product_name
from product as p
join sales as s on p.product_id=s.product_id
where (s.sale_date between '2019-01-01' and '2019-03-31')
and p.product_id not in (
  select p.product_id
  from product as p
  join sales as s on p.product_id=s.product_id
  where s.sale_date>'2019-03-31' or s.sale_date<'2019-01-01'
);