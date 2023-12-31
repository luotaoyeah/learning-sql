-- 2.8.5 date and time functions


-- region CURRENT_TIMESTAMP
-- ----------------------------------------------------------------------------------------------------
-- 获取当前时间: (标准) CURRENT_TIMESTAMP 返回类型为 DATETIME,
SELECT CURRENT_TIMESTAMP AS [CURRENT_TIMESTAMP];
-- endregion


-- region SYSDATETIME()
-- ----------------------------------------------------------------------------------------------------
-- 获取当前时间: SYSDATETIME() 返回类型为 DATETIME2,
SELECT SYSDATETIME() AS [SYSDATETIME()];
-- endregion


-- region CAST()
-- ----------------------------------------------------------------------------------------------------
-- (标准) CAST(value AS type),
SELECT CAST(SYSDATETIME() AS VARCHAR(10));
-- endregion


-- region CONVERT()
-- ----------------------------------------------------------------------------------------------------
-- CONVERT(type, value[, style]),
-- 第三个参数 style 表示日期格式, https://learn.microsoft.com/en-us/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-ver16#date-and-time-styles
SELECT CONVERT(VARCHAR(10), CURRENT_TIMESTAMP, 120);
-- endregion


-- region DATEADD()
-- ----------------------------------------------------------------------------------------------------
-- DATEADD(part, n, value),
-- 其中参数 part 可以为 year/month/day/hour/minute/second 等等,
-- 如果 value 类型为字符串, 则结果类型为 DATETIME, 否则结果类型跟 value 类型一样,
-- 参数 n 可以为负数,
SELECT DATEADD(YEAR, 1, '20240101');
-- endregion