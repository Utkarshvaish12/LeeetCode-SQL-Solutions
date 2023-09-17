WITH RankedStadium AS (
    SELECT
        *,
        id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    FROM
        stadium
    WHERE
        people >= 100
)

SELECT id,visit_date,people
FROM RankedStadium
WHERE (SELECT COUNT(*) FROM RankedStadium AS a WHERE a.grp = RankedStadium.grp) >= 3;
