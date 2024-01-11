-- 4.2. correlated subqueries

-- region self-contained scalar subquery
-- ----------------------------------------------------------------------------------------------------
-- correlated subquery 指的是依赖于外查询的子查询,
-- 下面这个子查询, 会针对外查询的每一行都执行一遍,

SELECT o1.custid,
       o1.orderid
  FROM sales.orders AS o1
 WHERE o1.orderid = (
                        SELECT MAX(o2.orderid)
                          FROM sales.orders AS o2
                         WHERE o2.custid = o1.custid
                    )
 ORDER BY o1.custid,
          o1.orderid;
-- endregion