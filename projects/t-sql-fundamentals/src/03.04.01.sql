-- 3.4.1. outer joins, described

-- region LEFT OUTER JOIN
-- ----------------------------------------------------------------------------------------------------
-- LEFT OUTER JOIN 的处理分两步:
--   1. 跟 CROSS JOIN 一样得到两个表的笛卡尔乘积
--   2. 根据 ON 条件过滤不满足条件的行
--   3. 将 preserved table 中不满足 ON 条件的行, 添加到结果集中,

-- 对于 LEFT OUTER JOIN, preserved table 指的是 LEFT OUTER JOIN 左边的表,
-- 对于 RIGHT OUTER JOIN, preserved table 指的是 RIGHT OUTER JOIN 右边的表,
-- 对于 FULL OUTER JOIN, preserved table 指的是 FULL OUTER JOIN 两边的表,

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
           LEFT OUTER JOIN (
                               SELECT 2 AS id, N'甲' AS y
                                UNION ALL
                               SELECT 3 AS id, N'乙' AS y
                                UNION ALL
                               SELECT 4 AS id, N'丙' AS y
                           ) AS t_02
           ON t_01.id = t_02.id;
-- endregion


-- region RIGHT OUTER JOIN
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
           RIGHT OUTER JOIN (
                                SELECT 2 AS id, N'甲' AS y
                                 UNION ALL
                                SELECT 3 AS id, N'乙' AS y
                                 UNION ALL
                                SELECT 4 AS id, N'丙' AS y
                            ) AS t_02
           ON t_01.id = t_02.id;
-- endregion


-- region FULL OUTER JOIN
-- ----------------------------------------------------------------------------------------------------
-- 对于 FULL OUTER JOIN, 两个表的顺序不影响最后的结果, 因为两个表都是 preserved table,
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
           FULL OUTER JOIN (
                               SELECT 2 AS id, N'甲' AS y
                                UNION ALL
                               SELECT 3 AS id, N'乙' AS y
                                UNION ALL
                               SELECT 4 AS id, N'丙' AS y
                           ) AS t_02
           ON t_01.id = t_02.id
 ORDER BY [t_01.id],
          [t_02.id];

SELECT t_01.id AS [t_01.id],
       t_01.x,
       t_02.id AS [t_02.id],
       t_02.y
  FROM (
           SELECT 2 AS id, N'甲' AS y
            UNION ALL
           SELECT 3 AS id, N'乙' AS y
            UNION ALL
           SELECT 4 AS id, N'丙' AS y
       ) AS t_02
           FULL OUTER JOIN (
                               SELECT 1 AS id, 'A' AS x
                                UNION ALL
                               SELECT 2 AS id, 'B' AS x
                                UNION ALL
                               SELECT 3 AS id, 'C' AS x
                           ) AS t_01
           ON t_01.id = t_02.id
 ORDER BY [t_01.id],
          [t_02.id];
-- endregion

-- region LEFT JOIN, RIGHT JOIN, FULL JOIN
-- ----------------------------------------------------------------------------------------------------
-- 关键字 LEFT OUTER JOIN 可以简写为 LEFT JOIN,
-- 关键字 RIGHT OUTER JOIN 可以简写为 RIGHT JOIN,
-- 关键字 FULL OUTER JOIN 可以简写为 FULL JOIN,
-- endregion