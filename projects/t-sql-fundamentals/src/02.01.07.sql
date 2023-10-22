-- 2.1.7. the TOP and OFFSET-FETCH filters

USE tsqlv6;


SELECT TOP (5) orderid, orderdate
  FROM sales.orders
 ORDER BY orderdate DESC;


-- TOP (1) PERCENT 表示取前 1% 的行, 如果结果为小数则向上取整,

SELECT TOP (1) PERCENT orderid, orderdate
  FROM sales.orders
 ORDER BY orderdate DESC;

-- TOP (5) WITH TIES 表示经过排序之后, 如果有序号相同的行, 则把它们都返回,

SELECT TOP (5) WITH TIES orderid, orderdate
  FROM sales.orders
 ORDER BY orderdate DESC;