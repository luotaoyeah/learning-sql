-- 2.1.3. the GROUP BY clause


-- region 聚合函数会忽略 NULL 值,
-- ----------------------------------------------------------------------------------------------------
-- 如下, 分组中有 5 行, 但是有一行的 value 为 NULL, 因此这一行被忽略了, 因此 COUNT(value) 为 4,
-- COUNT(*) 是一个特殊情况, 因为它不针对具体某一列, 因此它会返回所有行, 因此 COUNT(*) 为 5,
SELECT COUNT(value) AS [COUNT(value)],
       COUNT(*)     AS [COUNT(*)]
  FROM (
           SELECT 30 AS value UNION ALL SELECT 10 AS value UNION ALL SELECT NULL AS value UNION ALL SELECT 10 AS value UNION ALL SELECT 10 AS value
       ) AS tmp;
-- endregion


-- region DISTINCT
-- ----------------------------------------------------------------------------------------------------
-- 所有的聚合函数都可以跟 DISTINCT 一起使用, 表示在聚合之前先去重,
SELECT STRING_AGG(value, ',') AS 去重之前的值,
       (
           SELECT STRING_AGG(value, ',')
             FROM (
                      SELECT DISTINCT value
                        FROM STRING_SPLIT(STRING_AGG(value, ','), ',')
                  ) AS inneragg
       )                      AS 去重之后的值,
       COUNT(value)           AS [COUNT(value)],
       COUNT(DISTINCT value)  AS [COUNT(DISTINCT value)],
       SUM(value)             AS [SUM(value)],
       SUM(DISTINCT value)    AS [SUM(DISTINCT value)],
       AVG(value)             AS [AVG(value)],
       AVG(DISTINCT value)    AS [AVG(DISTINCT value)]
  FROM (
           SELECT 30 AS value UNION ALL SELECT 10 AS value UNION ALL SELECT NULL AS value UNION ALL SELECT 10 AS value UNION ALL SELECT 10 AS value
       ) AS tmp;
-- endregion