-- 9.5.1. subqueries as data sources

USE sakila;

-- WITH 操作符, 用来定义一个 CTE (Common Table Expression), 相当于给子查询的结果集取了一个别名, 其他地方可以通过该别名引用该结果集,

  WITH _table_01 AS (
                        SELECT 1 AS x, 2 AS y
                         UNION ALL
                        SELECT 3 AS x, 4 AS y

                    ),
       _table_02 AS (
                        SELECT 1
                         UNION ALL
                        SELECT 2

                    )
SELECT *
  FROM _table_01
 WHERE _table_01.x > ALL (
                             SELECT *
                               FROM _table_02
                         );

-- 结果集为单行单列的子查询称为 scalar 子查询, 它可以作为一个表达式, 用在任何表达式可以使用的地方,