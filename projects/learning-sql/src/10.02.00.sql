-- 10.2. cross joins

USE sakila;

-- CROSS JOIN 的结果是两个表的笛卡尔乘积, 相当于 INNER JOIN 不加 ON 条件,

SELECT category_id, language_id
  FROM category
           INNER JOIN language;


SELECT category_id, language_id
  FROM category
           CROSS JOIN language;

-- 示例:

SELECT DATE_ADD('2023-01-01', INTERVAL (y + m + d) DAY) AS dates
  FROM ((
            SELECT 0 AS y
             UNION ALL
            SELECT 100 AS y
             UNION ALL
            SELECT 200 AS y
             UNION ALL
            SELECT 300 AS y
        ) hundreds CROSS JOIN (
                                  SELECT 0 AS m
                                   UNION ALL
                                  SELECT 10 AS m
                                   UNION ALL
                                  SELECT 20 AS m
                                   UNION ALL
                                  SELECT 30 AS m
                                   UNION ALL
                                  SELECT 40 AS m
                                   UNION ALL
                                  SELECT 50 AS m
                                   UNION ALL
                                  SELECT 60 AS m
                                   UNION ALL
                                  SELECT 70 AS m
                                   UNION ALL
                                  SELECT 80 AS m
                                   UNION ALL
                                  SELECT 90 AS m
                              ) tens CROSS JOIN (
                                                    SELECT 0 AS d
                                                     UNION ALL
                                                    SELECT 1 AS d
                                                     UNION ALL
                                                    SELECT 2 AS d
                                                     UNION ALL
                                                    SELECT 3 AS d
                                                     UNION ALL
                                                    SELECT 4 AS d
                                                     UNION ALL
                                                    SELECT 5 AS d
                                                     UNION ALL
                                                    SELECT 6 AS d
                                                     UNION ALL
                                                    SELECT 7 AS d
                                                     UNION ALL
                                                    SELECT 8 AS d
                                                     UNION ALL
                                                    SELECT 9 AS d
                                                ) AS ones)
 WHERE DATE_ADD('2023-01-01', INTERVAL (y + m + d) DAY) < '2024-01-01'
 ORDER BY dates;