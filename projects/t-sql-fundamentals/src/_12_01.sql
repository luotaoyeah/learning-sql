-- 12.1 variables

-- ----------------------------------------------------------------------------------------------------
-- 使用 DECLARE 声明一个变量, 变量名必须以 @ 开头, 变量名后面跟上类型,
DECLARE @i INT;

-- 类型前面的 AS 关键字是可选的,
DECLARE @j AS INT;

-- 使用 SET 设置变量的值, SET 一次只能给一个变量赋值,
SET @i = 10;
SET @j = 10;

SELECT @i AS [@i],
       @j AS "@j";
GO

-- ----------------------------------------------------------------------------------------------------
-- 可以在声明变量的同时赋值,
DECLARE @j INT = 10;
SELECT @j AS j;
GO

-- ----------------------------------------------------------------------------------------------------
-- 可以同时声明多个变量,
DECLARE @i INT = 10, @j AS INT;
SET @j = 10;
SELECT @i AS "@i",
       @j AS "@j";
GO

-- ----------------------------------------------------------------------------------------------------
-- 可以将查询结果为单值的子查询赋值给变量,
DECLARE @empname AS NVARCHAR(MAX) = (
                                        SELECT HR.Employees.firstname + N' ' + HR.Employees.lastname
                                          FROM HR.Employees
                                         WHERE empid = 3
                                    );
SELECT @empname AS "@empname";
GO

-- ----------------------------------------------------------------------------------------------------
-- 使用 SET 同时只能给一个变量赋值,
DECLARE @firstname AS NVARCHAR(MAX), @lastname AS NVARCHAR(MAX);

SET @firstname = (
                     SELECT firstname
                       FROM HR.Employees
                      WHERE empid = 3
                 );

SET @lastname = (
                    SELECT lastname
                      FROM HR.Employees
                     WHERE empid = 3
                );

SELECT @firstname AS "@firstname",
       @lastname  AS "@lastname";
GO

-- (非标)使用 assignment select statement 可以同时给多个变量赋值,
DECLARE @firstname AS NVARCHAR(MAX), @lastname AS NVARCHAR(MAX);

SELECT @firstname = firstname,
       @lastname = lastname
  FROM HR.Employees
 WHERE empid = 3;

SELECT @firstname AS "@firstname",
       @lastname  AS "@lastname";
GO

-- ----------------------------------------------------------------------------------------------------
-- 如果未给变量赋值, 则为默认值 NULL,
DECLARE @x INT;
SELECT @x "@x";
GO
