SELECT u.user_id as buyer_id, u.join_date, COUNT(DISTINCT o.order_id) AS orders_in_2019
FROM users AS u
left JOIN orders AS o ON o.buyer_id = u.user_id and YEAR(o.order_date) = 2019
GROUP BY u.user_id;
