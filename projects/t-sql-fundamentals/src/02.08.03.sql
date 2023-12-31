-- 2.8.3 woring with date and time separately


-- region 对于 DATETIME 类型, 当没有指定年月日时, 默认的年月日为 1900-01-01,
-- ----------------------------------------------------------------------------------------------------
SELECT CAST('01:01:01.123' AS DATETIME);
-- endregion
