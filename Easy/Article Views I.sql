select distinct a1.author_id as id
from views as a1
where a1.author_id=a1.viewer_id
order by a1.author_id;