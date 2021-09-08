SELECT STATECENSUS,
       IND,
       State,
       "Industry Name ",
       COUNT(*) FILTER (
                        WHERE EARNWT > 0.0) AS observations,
       SUM(EARNWT/60) AS employment,
       COALESCE(SUM(EARNWT/60) FILTER (
                                       WHERE "UNION" = 2), 0) AS members,
       COALESCE(SUM(EARNWT/60) FILTER (
                                       WHERE "UNION" > 1), 0) AS covered
FROM cps
INNER JOIN state_codes ON STATECENSUS = state_codes.Code
INNER JOIN industry_codes ON IND = CIC
WHERE ELIGORG = 1
GROUP BY STATECENSUS,
         IND;
