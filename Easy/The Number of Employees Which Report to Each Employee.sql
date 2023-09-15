select e1.employee_id,e1.name,count(distinct e2.employee_id) as reports_count,round(avg(e2.age)) as average_age
from employees as e1, employees as e2
where e1.employee_id=e2.reports_to
group by e1.employee_id,e1.name;