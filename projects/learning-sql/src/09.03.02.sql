-- 9.3.2. multicolumn subqueries

USE sakila;

-- IN 前面可以包含多个列: `WHERE (x, y) IN ((1, 2), (3, 4))`, 相应地后面的集合也是一个二维集合,

SELECT *
  FROM ((SELECT 1 AS x, 2 AS y, 3 AS z) UNION (SELECT 4 AS x, 5 AS y, 6 AS z) UNION (SELECT 7 AS x, 8 AS y, 9 AS z)) AS a
 WHERE (x, y) IN ((1, 2), (7, 8));

-- 后面的二维集合可以由子查询产生,

SELECT *
  FROM ((SELECT 1 AS x, 2 AS y, 3 AS z) UNION (SELECT 4 AS x, 5 AS y, 6 AS z) UNION (SELECT 7 AS x, 8 AS y, 9 AS z)) AS a
 WHERE (x, y) IN (SELECT * FROM ((SELECT 1 AS x, 2 AS y) UNION (SELECT 7 AS x, 8 AS y)) AS b);