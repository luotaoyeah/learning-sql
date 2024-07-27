-- 12.7.2 stored procedures

-- ----------------------------------------------------------------------------------------------------
-- 存储过程和 UDF 的区别是, 它有入参, 有出参, 可以有副作用,
-- 关键字 PROC 是 PROCEDURE 的简写,

DROP PROC IF EXISTS dbo.sp_01;
GO

-- AS 后面的所有语句, 直到 GO, 都属于该存储过程,
-- 因此, 如果有多条语句, 最好使用代码块(BEGIN...END),
CREATE PROCEDURE dbo.sp_01 AS PRINT 'A'; PRINT 'B';
GO

PRINT 'C';
GO

EXEC dbo.sp_01;
GO

-- ----------------------------------------------------------------------------------------------------
-- 定义入参

DROP PROC IF EXISTS dbo.sp_02;
GO

CREATE PROC dbo.sp_02 @x AS INT, @y AS NVARCHAR AS
BEGIN
    PRINT @x;
    PRINT @y;
END;
GO

EXEC dbo.sp_02 1, 'A';
GO

-- ----------------------------------------------------------------------------------------------------
-- 定义出参

DROP PROC IF EXISTS dbo.sp_03;
GO

-- 定义出参时, 参数类型后面加上关键字 OUTPUT,
CREATE PROCEDURE dbo.sp_03 @x INT OUTPUT AS
BEGIN
    SET @x = 9;
END;
GO

DECLARE @y INT;
-- 将一个变量作为出参传递给存储过程, 此时参数后面也要加上关键字 OUTPUT,
EXEC dbo.sp_03 @y OUTPUT;
SELECT @y;
GO

-- ----------------------------------------------------------------------------------------------------
-- 定义多个出参,

DROP PROC IF EXISTS dbo.sp_04;
GO

CREATE PROC dbo.sp_04 @x INT OUTPUT, @y INT OUTPUT AS
BEGIN
    SET @x = 6;
    SET @y = 9;
END;
GO

DECLARE @x1 INT , @y1 INT;
EXEC dbo.sp_04 @x1 OUTPUT, @y1 OUTPUT;
SELECT @x1,
       @y1;
GO

-- ----------------------------------------------------------------------------------------------------
-- 入参使用默认值,

DROP PROC IF EXISTS dbo.sp_05;
GO

CREATE PROC dbo.sp_05 @x INT = 9 AS
BEGIN
    PRINT @x;
END;
GO

-- 不传参, 则会用参数的默认值,
EXEC dbo.sp_05;
GO

EXEC dbo.sp_05 6;
GO