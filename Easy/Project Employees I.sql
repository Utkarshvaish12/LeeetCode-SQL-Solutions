select p.project_id as project_id, round(avg(e.experience_years),2) as average_years
from employee as e
join project as p on p.employee_id=e.employee_id
group by p.project_id;