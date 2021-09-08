SELECT STATECENSUS,
       YEAR,
       IND,
       COUNT(*) FILTER (
                        WHERE EARNWT > 0.0) AS observations,
       SUM(EARNWT/12) AS employment,
       SUM(EARNWT/12) FILTER (
                              WHERE "UNION" = 2) AS members,
       SUM(EARNWT/12) FILTER (
                              WHERE "UNION" > 1) AS covered
FROM cps
WHERE ELIGORG = 1
GROUP BY STATECENSUS,
         YEAR,
         IND;
