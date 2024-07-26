-- 12.2.2 batches and variables

-- ----------------------------------------------------------------------------------------------------
-- 变量的作用域属于当前批次,

DECLARE @i AS INT=10;
PRINT @i;
GO

PRINT @i;
GO

-- ----------------------------------------------------------------------------------------------------
-- 不同批次中可以声明同名的变量,

DECLARE @i AS INT= 10;
PRINT @i;
GO

DECLARE @i AS NVARCHAR(MAX) = '10';
PRINT @i;
GO