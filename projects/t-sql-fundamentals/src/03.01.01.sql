-- 3.1. cross joins

-- region CROSS JOIN
-- ----------------------------------------------------------------------------------------------------
-- CROSS JOIN 的结果就是两个表的笛卡尔乘积,
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
           CROSS JOIN (
                          SELECT 2 AS id, N'甲' AS y
                           UNION ALL
                          SELECT 3 AS id, N'乙' AS y
                           UNION ALL
                          SELECT 4 AS id, N'丙' AS y
                      ) AS t_02
-- endregion
