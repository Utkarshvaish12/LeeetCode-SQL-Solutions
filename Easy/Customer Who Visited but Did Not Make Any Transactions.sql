SELECT v.customer_id, COUNT(v.visit_id) as count_no_trans
FROM visits AS v
LEFT JOIN transactions AS t ON t.visit_id = v.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id
order by count_no_trans desc;