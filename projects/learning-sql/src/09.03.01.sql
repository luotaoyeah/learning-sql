-- 9.3.1. multiple-row, single-column subqueries

USE sakila;

-- NOT IN 后面的集合中不能包含 NULL, 否则结果集为空,
-- 因为任何值跟 NULL 进行比较(任何比较, =,>,<,...)的结果都是 NULL,

SELECT *
  FROM (
           (
               SELECT 1 AS x, 2 AS y, 3 AS z
           )
            UNION
           (
               SELECT 4 AS x, 5 AS y, 6 AS z
           )
       ) AS a
 WHERE z NOT IN (1, 3);

SELECT *
  FROM (
           (
               SELECT 1 AS x, 2 AS y, 3 AS z
           )
            UNION
           (
               SELECT 4 AS x, 5 AS y, 6 AS z
           )
       ) AS a
 WHERE z NOT IN (1, 3, NULL);

SELECT NULL = NULL;


-- `x > 1 AND x > 2` 这种形式可以写成 `x > ALL (1, 2)`, 其中 (1, 2) 需要由子查询产生,

SELECT x
  FROM (
           (
               SELECT 1 AS x
           )
            UNION
           (
               SELECT 2 AS x
           )
            UNION
           (
               SELECT 3 AS x
           )
            UNION
           (
               SELECT 4 AS x
           )
       ) AS a
 WHERE x > 1
   AND x > 2;

SELECT x
  FROM (
           (
               SELECT 1 AS x
           )
            UNION
           (
               SELECT 2 AS x
           )
            UNION
           (
               SELECT 3 AS x
           )
            UNION
           (
               SELECT 4 AS x
           )
       ) AS a
 WHERE x > ALL (
                   SELECT y
                     FROM (
                              (
                                  SELECT 1 AS y
                              )
                               UNION
                              (
                                  SELECT 2 AS y
                              )
                          ) AS b
               );


-- `x > 1 OR x > 2` 这种形式可以写成 `x > ANY (1, 2)`, 其中 (1, 2) 需要由子查询产生,
-- `x IN (1, 2)` 可以写成 `x = ANY (1, 2)`,

SELECT x
  FROM (
           (
               SELECT 1 AS x
           )
            UNION
           (
               SELECT 2 AS x
           )
            UNION
           (
               SELECT 3 AS x
           )
            UNION
           (
               SELECT 4 AS x
           )
       ) AS a
 WHERE x > 1
    OR x > 2;

SELECT x
  FROM (
           (
               SELECT 1 AS x
           )
            UNION
           (
               SELECT 2 AS x
           )
            UNION
           (
               SELECT 3 AS x
           )
            UNION
           (
               SELECT 4 AS x
           )
       ) AS a
 WHERE x > ANY (
                   SELECT y
                     FROM (
                              (
                                  SELECT 1 AS y
                              )
                               UNION
                              (
                                  SELECT 2 AS y
                              )
                          ) AS b
               );