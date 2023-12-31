-- 2.8.5 date and time functions


-- region 获取当前时间: (标准) CURRENT_TIMESTAMP 返回类型为 DATETIME,
-- ----------------------------------------------------------------------------------------------------
SELECT CURRENT_TIMESTAMP AS [CURRENT_TIMESTAMP];
-- endregion


-- region 获取当前时间: SYSDATETIME() 返回类型为 DATETIME2,
-- ----------------------------------------------------------------------------------------------------
SELECT SYSDATETIME() AS [SYSDATETIME()];
-- endregion


-- region (标准) CAST(value AS type)
-- ----------------------------------------------------------------------------------------------------
SELECT CAST(SYSDATETIME() AS VARCHAR(10));
-- endregion


-- region CONVERT(type, value[, style])
-- 第三个参数 style 表示日期格式, https://learn.microsoft.com/en-us/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-ver16#date-and-time-styles
-- ----------------------------------------------------------------------------------------------------
SELECT CONVERT(VARCHAR(10), CURRENT_TIMESTAMP, 120);
-- endregion