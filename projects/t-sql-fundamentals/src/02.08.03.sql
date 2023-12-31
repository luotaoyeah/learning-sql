-- 2.8.3 woring with date and time separately


-- region 当没有指定年月日时, 默认的年月日为 1900-01-01,
-- ----------------------------------------------------------------------------------------------------
SELECT CAST('01:01:01.123' AS DATETIME2);
-- endregion

-- region 当没有指定时分秒时, 默认的时分秒为 00:00:00,
-- ----------------------------------------------------------------------------------------------------
SELECT CAST('2024-01-01' AS DATETIME2);
-- endregion
