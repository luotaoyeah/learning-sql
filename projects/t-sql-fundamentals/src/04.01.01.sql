-- 4.1.1. self-contained scalar subquery examples

-- region self-contained scalar subquery
-- ----------------------------------------------------------------------------------------------------
-- self-contained subquery 指的是不依赖于外查询的子查询,
-- scalar subquery 指的是返回结果为一行一列的子查询,

-- 如下, 先查出最大的 orderid 存入变量,
DECLARE @maxid AS INT = (
                            SELECT MAX(orderid)
                              FROM sales.orders
                        );

SELECT orderid,
       empid,
       custid
  FROM sales.orders
 WHERE orderid = @maxid;

-- 如下, 使用子查询实现相同的效果,
SELECT orderid,
       empid,
       custid
  FROM sales.orders
 WHERE orderid = (
                     SELECT MAX(orderid)
                       FROM sales.orders
                 );
-- endregion