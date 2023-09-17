select round((count(*)/(select count(distinct customer_id) from delivery))*100,2) as immediate_percentage
from (
  select d1.delivery_id,d1.customer_id,d1.order_date,d1.customer_pref_delivery_date
  from delivery as d1
  where d1.order_date=(select min(d2.order_date) from delivery as d2 where d1.customer_id=d2.customer_id
  group by d2.customer_id)
) as first_order
where order_date=customer_pref_delivery_date;