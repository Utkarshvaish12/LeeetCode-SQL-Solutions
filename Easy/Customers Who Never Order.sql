elect c.name as Customers
from customers as c
Left join orders as o on c.id=o.customerId
where o.id is NULL;