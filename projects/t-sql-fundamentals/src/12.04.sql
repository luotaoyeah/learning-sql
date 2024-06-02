-- 12.4 cursors

-- -- 声明一个类型为 TABLE 的变量,
DECLARE @table01 TABLE
                     (
                         custid INT
                     );

-- -- 声明一个 cursor, 名称不能使用 @ 作为前缀,
-- -- 必须基于一个查询结果,
DECLARE c CURSOR FAST_FORWARD FOR SELECT custid
                                    FROM sales.customers;

OPEN c;

DECLARE @custid INT;

-- -- 获取下一行数据, 并将每列的值存入变量,
FETCH NEXT FROM c INTO @custid;

-- -- @@FETCH_STATUS 为 0 表示 cursor 当前指向的是有效的行,
WHILE @@FETCH_STATUS = 0 BEGIN
    INSERT INTO @table01 VALUES (@custid);

    FETCH NEXT FROM c INTO @custid;
END

CLOSE c;

DEALLOCATE c;

SELECT *
  FROM @table01;

GO