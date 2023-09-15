select p.product_id, round(sum(p.price*u.units)/sum(u.units),2) as average_price
from prices as p
left join unitssold as u on p.product_id=u.product_id
and u.purchase_date BETWEEN start_date AND end_date
group by p.product_id;