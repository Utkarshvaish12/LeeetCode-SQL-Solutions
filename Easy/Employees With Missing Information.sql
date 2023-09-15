SELECT e.employee_id
FROM employees AS e
LEFT JOIN salaries AS s ON e.employee_id = s.employee_id
WHERE s.salary IS NULL OR e.name IS NULL

UNION

SELECT s.employee_id
FROM employees AS e
RIGHT JOIN salaries AS s ON e.employee_id = s.employee_id
WHERE s.salary IS NULL OR e.name IS NULL

ORDER BY employee_id;
