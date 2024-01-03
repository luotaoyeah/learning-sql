-- 2.1.7. the TOP and OFFSET-FETCH filters

USE tsqlv6;


-- region TOP n
-- ----------------------------------------------------------------------------------------------------
SELECT TOP 5 orderid,
             orderdate
  FROM sales.orders
 ORDER BY orderdate DESC;
-- endregion

-- region TOP n PERCENT
-- ----------------------------------------------------------------------------------------------------
-- TOP n PERCENT 表示取前 n% 的行, 如果结果为小数, 则向上取整,
SELECT TOP 1 PERCENT orderid,
                     orderdate
  FROM sales.orders
 ORDER BY orderdate DESC;
-- endregion

-- region TOP n WITH TIES...ORDER BY...
-- ----------------------------------------------------------------------------------------------------
-- TOP n WITH TIES 表示经过排序之后, 如果有跟最后一行的序号相同的行, 则把它们都返回,
-- WITH TIES 必须跟 ORDER BY 一起使用,
SELECT TOP 5 WITH TIES orderid,
                       orderdate
  FROM sales.orders
 ORDER BY orderdate DESC;
-- endregion

-- region OFFSET...FETCH...
-- ----------------------------------------------------------------------------------------------------
-- OFFSET...FETCH... 用于分页查询, 必须跟 ORDER BY 一起使用, 它相当于是 ORDER BY 的扩展,
-- 其中 ROWS 和 ROW 可以互换, NEXT 和 FIRST 可以互换, ONLY 跟 WITH TIES 必须二选一(但是 WITH TIES 尚未实现),
SELECT orderid,
       orderdate
  FROM sales.orders
 ORDER BY orderdate,
          orderid
OFFSET 50 ROWS FETCH NEXT 25 ROWS ONLY;
-- endregion

-- region OFFSET...
-- ----------------------------------------------------------------------------------------------------
-- 可以只有 OFFSET 没有 FETCH, 表示取剩下所有的行,
SELECT orderid,
       orderdate
  FROM sales.orders
 ORDER BY orderdate,
          orderid
OFFSET 50 ROWS;
-- endregion
