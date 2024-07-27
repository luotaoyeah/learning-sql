-- 12.3.1 the IF...ELSE flow element

-- ----------------------------------------------------------------------------------------------------
IF 1 < 0 PRINT 'A'; ELSE PRINT 'B';
GO


-- ----------------------------------------------------------------------------------------------------
-- 如果 IF 或者 ELSE 下面包含多条语句, 需要使用 BEGIN...END 包裹起来, 称为 statement block,

IF 1 > 0
    BEGIN
        PRINT 'A';
        PRINT 'B';
    END;
ELSE
    BEGIN
        PRINT 'C';
        PRINT 'D';
    END;
GO

-- ----------------------------------------------------------------------------------------------------
-- IF 或者 ELSE 下面可以嵌套其他的 IF...ELSE,

IF 1 < 0
    BEGIN
        PRINT 'A';
    END;
ELSE
    IF 1 < 0
        BEGIN
            PRINT 'B';
        END;
    ELSE
        BEGIN
            PRINT 'C';
        END;
GO
