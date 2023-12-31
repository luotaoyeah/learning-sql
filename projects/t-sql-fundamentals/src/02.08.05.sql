-- 2.8.5 date and time functions


-- region 获取当前时间: (标准) CURRENT_TIMESTAMP 返回类型为 DATETIME,
-- ----------------------------------------------------------------------------------------------------
SELECT CURRENT_TIMESTAMP AS [CURRENT_TIMESTAMP];
-- endregion


-- region 获取当前时间: SYSDATETIME() 返回类型为 DATETIME2,
-- ----------------------------------------------------------------------------------------------------
SELECT SYSDATETIME() AS [SYSDATETIME()];
-- endregion
