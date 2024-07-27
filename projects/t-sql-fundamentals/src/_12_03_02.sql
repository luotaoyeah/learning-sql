-- 12.3.2 the WHILE flow element

-- ----------------------------------------------------------------------------------------------------
-- 如下, 使用 WHILE 模拟 FOR 循环,

DECLARE @i INT = 1;

WHILE @i <= 10 BEGIN
    PRINT @i;
    SET @i = @i + 1;
END;
GO

-- ----------------------------------------------------------------------------------------------------
-- 使用 BREAK 结束所有循环,

DECLARE @i INT = 1;

WHILE @i <= 10 BEGIN
    IF @i = 6
        BEGIN
            BREAK;
        END

    PRINT @i;
    SET @i = @i + 1;
END;
GO

-- ----------------------------------------------------------------------------------------------------
-- 使用 CONTINUE 结束本次循环,

DECLARE @i INT = 0;

WHILE (@i < 10) BEGIN
    SET @i = @i + 1;

    IF (@i = 6)
        BEGIN
            CONTINUE;
        END

    PRINT @i;
END;
GO