SELECT e.name
FROM employee AS e
WHERE e.id IN (
    SELECT managerId
    FROM employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
);
