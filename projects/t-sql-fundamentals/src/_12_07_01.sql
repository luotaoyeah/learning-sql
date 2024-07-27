-- 12.7.1 user-defined functions

-- ----------------------------------------------------------------------------------------------------
-- UDF(user defined function, 用户定义函数),

DROP FUNCTION IF EXISTS dbo.function_01;
GO

-- UDF 必须有返回值, 不能有副作用,
CREATE FUNCTION dbo.function_01(@x AS INT, @y INT) RETURNS INT AS
BEGIN
    DECLARE @result INT;

    IF @x > @y
        BEGIN
            SET @result = @x;
        END;
    ELSE
        SET @result = @y;

    -- [S0014][443] Line 14: Invalid use of a side-effecting operator 'PRINT' within a function.
    -- PRINT 'A';

    RETURN @result;
END;
GO

SELECT dbo.function_01(2, 3);
GO