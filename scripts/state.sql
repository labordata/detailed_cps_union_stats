select STATECENSUS,
       YEAR,
       SUM(EARNWT > 0.0) as observations,
       SUM(EARNWT/12) as employment,
       SUM(EARNWT/12) FILTER (
                              WHERE "UNION" = 2) as members,
       SUM(EARNWT/12) FILTER (
                              WHERE "UNION" > 1) as covered
FROM cps
where ELIGORG = 1
GROUP BY STATECENSUS, YEAR;
