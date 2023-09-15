select e1.employee_id
from employees as e1
where (e1.salary<30000) and (e1.manager_id not in (select employee_id from employees))
order by e1.employee_id;