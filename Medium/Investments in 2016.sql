SELECT round(sum(i1.tiv_2016),2) as tiv_2016
FROM insurance AS i1
WHERE i1.tiv_2015 IN (
    SELECT DISTINCT i2.tiv_2015
    FROM insurance AS i2
    where i1.pid!=i2.pid
) and (i1.lat,i1.lon) not in (
    SELECT DISTINCT i2.lat,i2.lon
    FROM insurance AS i2
    where i1.pid!=i2.pid
);
