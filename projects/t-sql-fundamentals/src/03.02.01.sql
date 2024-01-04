-- 3.2. inner joins

-- region INNER JOIN
-- ----------------------------------------------------------------------------------------------------
-- INNER JOIN 的处理分两步:
--   1. 跟 CROSS JOIN 一样得到两个表的笛卡尔乘积
--   2. 根据 ON 子句过滤不满足条件的行
SELECT t_01.id AS [t_01.id],
       t_01.x,
       t_02.id AS [t_02.id],
       t_02.y
  FROM (
           SELECT 1 AS id, 'A' AS x
            UNION ALL
           SELECT 2 AS id, 'B' AS x
            UNION ALL
           SELECT 3 AS id, 'C' AS x
       ) AS t_01
           INNER JOIN (
                          SELECT 2 AS id, N'甲' AS y
                           UNION ALL
                          SELECT 3 AS id, N'乙' AS y
                           UNION ALL
                          SELECT 4 AS id, N'丙' AS y
                      ) AS t_02
           ON t_01.id = t_02.id;
-- endregion

-- region JOIN
-- ----------------------------------------------------------------------------------------------------
-- 关键字 INNER JOIN 可以简写为 JOIN,
-- endregion
