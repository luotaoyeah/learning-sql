-- 3.4.3. filtering attributes from the nonpreserved side of an outer join

-- region LEFT OUTER JOIN
-- ----------------------------------------------------------------------------------------------------
-- WHERE 是在 outer join 之后执行的, 因此如果 WHERE 添加中包含 non-preserved table 中的列, 由于这些列可能是 NULL, 因此 WHERE 会把这些列都过滤掉,
--   因此导致结果集中并不包含 preserved table 中的所有的列, 需要注意,
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
           ON t_01.id = t_02.id
 WHERE t_02.id IS NOT NULL;
-- endregion
