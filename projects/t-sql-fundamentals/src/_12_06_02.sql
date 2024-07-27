-- 12.6.2 the sp_executesql stored procedure

-- ----------------------------------------------------------------------------------------------------
-- 可以使用 sp_executesql 这个存储过程来动态执行 SQL 字符串, 它跟 EXEC 命令的区别是可以接收参数,

DECLARE @sql AS NVARCHAR(MAX);

SET @sql = 'PRINT ''A''; PRINT ''B''; SELECT 1 AS ''C''';

EXEC sp_executesql @sql;

GO

-- ----------------------------------------------------------------------------------------------------
DECLARE @sql AS NVARCHAR(MAX);

SET @sql = 'PRINT @value01; PRINT @value02;';

-- sp_executesql 可以接收两个输入参数, 第一个参数为要执行的 SQL 语句, 第二个参数为 SQL 语句中的参数定义, 后面跟上任意多个 SQL 语句中的参数的值,
EXEC sp_executesql @sql, N'@value01 AS NVARCHAR, @value02 as NVARCHAR', @value01 = 'A', @value02 ='B';

GO