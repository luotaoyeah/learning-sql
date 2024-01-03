-- 2.1.6. the ORDER BY clause


USE tsqlv6;

-- region ORDER BY
-- ----------------------------------------------------------------------------------------------------
-- ORDER BY 是唯一一个在 SELECT 之后执行的子句, 因此它可以使用 SELECT 中定义的别名,
-- endregion


-- region SELECT DISTINCT 和 ORDER BY 一起使用时, ORDER BY 后面的列只能是 SELECT 中包含的列
-- ----------------------------------------------------------------------------------------------------
SELECT DISTINCT country
  FROM hr.employees
 ORDER BY empid;
-- endregion
