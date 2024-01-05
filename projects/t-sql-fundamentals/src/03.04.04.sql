-- 3.4.4. using outer joins in a multi-join query

-- region nested join
-- ----------------------------------------------------------------------------------------------------
-- 如下, t_01 和 t_02 和 t_03 依次进行 LEFT OUTER JOIN,
  WITH t_01 AS (
                   SELECT 1 AS id, 'A' AS x
                    UNION ALL
                   SELECT 2 AS id, 'B' AS x
                    UNION ALL
                   SELECT 3 AS id, 'C' AS x
               ),
       t_02 AS (
                   SELECT 2 AS id, N'甲' AS y
                    UNION ALL
                   SELECT 3 AS id, N'乙' AS y
                    UNION ALL
                   SELECT 4 AS id, N'丙' AS y
               ),
       t_03 AS (
                   SELECT 3 AS id, N'甲' AS y
                    UNION ALL
                   SELECT 4 AS id, N'乙' AS y
                    UNION ALL
                   SELECT 5 AS id, N'丙' AS y
               )
SELECT t_01.id AS [t_01.id],
       t_01.x,
       t_02.id AS [t_02.id],
       t_02.y
  FROM t_01
           LEFT OUTER JOIN t_02
           ON t_01.id = t_02.id
           LEFT OUTER JOIN t_03
           ON t_02.id = t_03.id;

-- 如下, t_02 和 t_03 先进行 INNER JOIN, t_01 再跟它们的结果进行 LEFT OUTER JOIN, 此时 t_02 和 t_03 的 INNER JOIN 称为 nested join,
  WITH t_01 AS (
                   SELECT 1 AS id, 'A' AS x
                    UNION ALL
                   SELECT 2 AS id, 'B' AS x
                    UNION ALL
                   SELECT 3 AS id, 'C' AS x
               ),
       t_02 AS (
                   SELECT 2 AS id, N'甲' AS y
                    UNION ALL
                   SELECT 3 AS id, N'乙' AS y
                    UNION ALL
                   SELECT 4 AS id, N'丙' AS y
               ),
       t_03 AS (
                   SELECT 3 AS id, N'甲' AS y
                    UNION ALL
                   SELECT 4 AS id, N'乙' AS y
                    UNION ALL
                   SELECT 5 AS id, N'丙' AS y
               )
SELECT t_01.id AS [t_01.id],
       t_01.x,
       t_02.id AS [t_02.id],
       t_02.y
  FROM t_01
           LEFT OUTER JOIN (t_02 INNER JOIN t_03
  ON t_02.id = t_03.id)
           ON t_01.id = t_02.id;
-- endregion
