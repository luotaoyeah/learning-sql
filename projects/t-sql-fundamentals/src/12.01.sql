-- 12.1 variables

-- 使用 DECLARE 声明一个变量, 使用 SET 设置变量的值,
DECLARE @i INT;
SET @i = 10;

SELECT @i AS i;

GO

-- 可以在声明变量的同时赋值,
DECLARE @j INT = 10;
SELECT @j AS j;

GO

-- 如果未给变量赋值, 则为默认值 NULL,
DECLARE @x INT;
SELECT @x x;

GO

-- 可以将查询结果为单值的子查询赋值给变量,
DECLARE @name AS NVARCHAR(MAX) = (
                                     SELECT hr.employees.firstname + N' ' + hr.employees.lastname
                                       FROM hr.employees
                                      WHERE empid = 3
                                 );
SELECT @name AS name;

GO

-- 使用 SET 同时只能给一个变量赋值,
DECLARE @firstname AS NVARCHAR(MAX), @lastname AS NVARCHAR(MAX);

SET @firstname = (
                     SELECT firstname
                       FROM hr.employees
                      WHERE empid = 3
                 );

SET @lastname = (
                    SELECT lastname
                      FROM hr.employees
                     WHERE empid = 3
                );

SELECT @firstname AS firstname,
       @lastname  AS lastname;

GO

-- (非标)使用 assignment select statement 可以同时给多个变量赋值,
DECLARE @firstname AS NVARCHAR(MAX), @lastname AS NVARCHAR(MAX);

SELECT @firstname = firstname,
       @lastname = lastname
  FROM hr.employees
 WHERE empid = 3;

SELECT @firstname AS firstname,
       @lastname  AS lastname;

GO