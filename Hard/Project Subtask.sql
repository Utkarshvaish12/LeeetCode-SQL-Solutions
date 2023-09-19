SELECT
  total_days,sub_tasks,proj_start,proj_end
FROM
  (SELECT
      @group := @group + is_new grp,
      COUNT(*) total_days,
      GROUP_CONCAT(id) sub_tasks,
      MIN(start_date) proj_start,
      MAX(end_date) proj_end
    FROM (SELECT id,start_date,end_date,
    CASE
    WHEN IFNULL(DATEDIFF(start_date,LAG(start_date) OVER (ORDER BY start_date)),1)>1 THEN 1
    ELSE 0
    END is_new
    FROM Tasks) sq,
    (select @group := 0) g
    GROUP BY grp
    ORDER BY total_days,proj_start) d