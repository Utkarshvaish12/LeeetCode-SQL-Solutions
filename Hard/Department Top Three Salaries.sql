select Department,Employee,Salary
from (
select d.name as Department,e.name as Employee, e.salary as Salary,DENSE_RANK() OVER (PARTITION BY d.name order by e.salary desc) as r
from employee as e
join department as d on e.departmentId=d.id
) as s1
where r<=3
ORDER BY Salary desc;