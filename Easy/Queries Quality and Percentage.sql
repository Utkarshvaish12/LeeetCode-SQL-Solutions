select query_name,ROUND(avg(rating/position),2) as quality,
ROUND(SUM(
  CASE WHEN RATING<3 THEN 1 
  else 0
  END
)/COUNT(*
)*100,2) as poor_query_percentage
from queries
group by query_name;