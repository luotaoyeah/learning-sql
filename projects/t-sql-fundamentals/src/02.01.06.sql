-- 2.1.6. the ORDER BY clause


USE tsqlv6;

-- SELECT DISTINCT 和 ORDER BY 一起使用时, ORDER BY 后面的列必须包含在 SELECT 后面的列中,

SELECT DISTINCT country
  FROM hr.employees
 ORDER BY empid;
