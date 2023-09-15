select unique_id,e2.name
from employeeuni as e1
right join employees as e2 on e1.id=e2.id;