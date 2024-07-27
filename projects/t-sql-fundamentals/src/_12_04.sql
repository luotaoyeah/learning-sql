-- 12.4 cursors

-- ----------------------------------------------------------------------------------------------------
-- -- 声明一个类型为 TABLE 的变量, 用于存放数据,
DECLARE @table01 TABLE
                     (
                         custid INT
                     );

-- -- 声明一个游标, 不能使用 @ 作为名称前缀,
-- -- 必须基于一个查询结果,
DECLARE cursor01 CURSOR FAST_FORWARD FOR (
                                             SELECT custid
                                               FROM Sales.Customers
                                         );
OPEN cursor01;

DECLARE @custid INT;

-- -- 获取下一行数据, 并将每列的值存入变量,
FETCH NEXT FROM cursor01 INTO @custid;

-- -- @@FETCH_STATUS 为 0 表示游标当前指向的是有效的行,
WHILE @@FETCH_STATUS = 0 BEGIN
    INSERT INTO @table01 VALUES (@custid);

    FETCH NEXT FROM cursor01 INTO @custid;
END;

CLOSE cursor01;
DEALLOCATE cursor01;

SELECT *
  FROM @table01;

GO