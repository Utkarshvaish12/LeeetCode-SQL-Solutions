SELECT w2.id
from Weather w1,weather w2
where w1.temperature<w2.temperature and datediff(w2.recordDate,w1.recordDate)=1;