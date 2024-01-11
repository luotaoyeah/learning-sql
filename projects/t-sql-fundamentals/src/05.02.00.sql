-- 5.2. common table expressions

-- region CTE
-- ----------------------------------------------------------------------------------------------------
-- CTE 的列的别名也有两种定义方式

-- inline aliasing
  WITH t_01 AS (
                   SELECT 1 AS x, 2 AS y
               )
SELECT x,
       y
  FROM t_01;

-- external aliasing
  WITH t_01(x, y) AS (
                         SELECT 1, 2
                     )
SELECT x,
       y
  FROM t_01;
-- endregion

-- region 同时定义多个 CTE
-- ----------------------------------------------------------------------------------------------------
-- 后面的 CTE 可以引用前面的 CTE,
  WITH t_01 AS (
                   SELECT 1 AS x, 2 AS y
               ),
       t_02(x, y) AS (
                   SELECT x * 2, y * 2
                     FROM t_01
               )
SELECT x,
       y
  FROM t_02;
-- endregion