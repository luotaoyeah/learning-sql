-- 5.1.1. assigning column aliases

-- region derived table
-- ----------------------------------------------------------------------------------------------------
-- derived table 指的是 FROM 子句中的子查询,
-- derived table 的列的别名有两种定义方式, 各有优劣,

-- inline aliasing
SELECT x,
       y
  FROM (
           SELECT 1 AS x, 2 AS y
       ) AS t_01;

-- external aliasing
SELECT x,
       y
  FROM (
           SELECT 1, 2
       ) AS t_01(x, y);
-- endregion