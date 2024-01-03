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
-- DATEADD(part, n, value), 给某个日期加上指定时间,
-- 其中参数 part 可以为 year/month/day/hour/minute/second 等等,
-- 如果 value 类型为字符串, 则结果类型为 DATETIME, 否则结果类型跟 value 类型一样,
-- 参数 n 可以为负数,
SELECT DATEADD(YEAR, 1, '20240101');
-- endregion


-- region DATEDIFF()
-- ----------------------------------------------------------------------------------------------------
-- DATEDIFF(part, value1, value2) 计算两个日期间的差值, 结果类型为 INT,
-- 获取本月的第一天
SELECT DATEADD(MONTH, DATEDIFF(MONTH, '19000101', SYSDATETIME()), '19000101');
-- 获取本年的第一月
SELECT DATEADD(YEAR, DATEDIFF(YEAR, '19000101', SYSDATETIME()), '19000101');
-- endregion

-- region DATEPART(), YEAR(), MONTH(), DAY()
-- ----------------------------------------------------------------------------------------------------
SELECT DATEPART(YEAR, SYSDATETIME())  AS year,
       DATEPART(MONTH, SYSDATETIME()) AS month,
       DATEPART(DAY, SYSDATETIME())   AS day
 UNION ALL
SELECT YEAR(SYSDATETIME())  AS year,
       MONTH(SYSDATETIME()) AS month,
       DAY(SYSDATETIME())   AS day;
-- endregion

-- region ISDATE()
-- ----------------------------------------------------------------------------------------------------
-- 判断字符串是否可以转换为 DATE/TIME/DATETIME 类型, 是返回 1, 否返回 0,
SELECT ISDATE('20240233');

-- 如下, 只能转换为 DATETIME2, 不能转换为 DATETIME, 因此返回 0,
SELECT ISDATE('2024-01-01 00:00:00.0000000');
-- endregion
