-- 3.3.2. non-equi joins

-- region ON 后面的表达式除了使用 = 判断是否相等, 还可以是任意的条件, 比如 < 等等,
-- ----------------------------------------------------------------------------------------------------
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
           ON t_01.id < t_02.id;
-- endregion
