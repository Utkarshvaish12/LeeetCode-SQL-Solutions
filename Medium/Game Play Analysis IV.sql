SELECT ROUND(COUNT(DISTINCT a2.player_id)/COUNT(DISTINCT a1.player_id), 2) as fraction
FROM 
(SELECT player_id, MIN(event_date) event_date 
FROM Activity
GROUP BY player_id) as a1
LEFT JOIN Activity a2 ON (a1.player_id=a2.player_id) and (datediff(a2.event_date,a1.event_date))=1;