-- 2.5 the GREATEST and LEAST functions

USE tsqlv6;

-- region GREATEST, LEAST
-- ----------------------------------------------------------------------------------------------------
-- MAX 和 MIN 是对'多行的一列'进行聚合, 而 GREATEST 和 LEAST 是对'一行的多列'进行聚合, 它们的维度不一样,

SELECT MIN(x) AS [MIN(x)],
       MAX(x) AS [MAX(x)],
       MIN(y) AS [MIN(y)],
       MAX(y) AS [MAX(y)],
       MIN(z) AS [MIN(z)],
       MAX(z) AS [MAX(z)]
  FROM (
           SELECT 1 AS x, 2 AS y, 3 AS z
            UNION ALL
           SELECT 4 AS x, 5 AS y, 6 AS z
            UNION ALL
           SELECT 7 AS x, 8 AS y, 9 AS z
       ) AS tmp;

SELECT LEAST(x, y, z)    AS [LEAST(x, y, z)],
       GREATEST(x, y, z) AS [GREATEST(x, y, z)]
  FROM (
           SELECT 1 AS x, 2 AS y, 3 AS z
            UNION ALL
           SELECT 4 AS x, 5 AS y, 6 AS z
            UNION ALL
           SELECT 7 AS x, 8 AS y, 9 AS z
       ) AS tmp;


-- 可以使用 CASE 模拟 LEAST 和 GREATEST,
SELECT (CASE
            WHEN (CASE
                      WHEN x > y THEN y
                      ELSE x
                  END) > z THEN z
            ELSE (CASE
                      WHEN x > y THEN y
                      ELSE x
                  END)
        END)                                                AS [LEAST(x, y, z)],
       (IIF((IIF(x > y, x, y)) > z, (IIF(x > y, x, y)), z)) AS [GREATEST(x, y, z)]
  FROM (
           SELECT 1 AS x, 2 AS y, 3 AS z
            UNION ALL
           SELECT 4 AS x, 5 AS y, 6 AS z
            UNION ALL
           SELECT 7 AS x, 8 AS y, 9 AS z
       ) AS tmp;
-- endregion

