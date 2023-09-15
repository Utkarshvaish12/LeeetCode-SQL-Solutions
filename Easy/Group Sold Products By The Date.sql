select sell_date,count(distinct product) as num_sold,
GROUP_CONCAT(distinct product ORDER BY product ASC) AS products
from activities
group by sell_date
order by sell_date;