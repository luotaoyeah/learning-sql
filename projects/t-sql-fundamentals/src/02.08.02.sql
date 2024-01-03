-- 2.8.2 literals


-- region 类型 VARCHAR 隐式转换为类型 DATE
-- ----------------------------------------------------------------------------------------------------
SELECT *
  FROM sales.orders
 WHERE orderdate = '2022-01-14';
-- endregion


-- region 类型 VARCHAR 显式转换为类型 DATE
-- ----------------------------------------------------------------------------------------------------
SELECT *
  FROM sales.orders
 WHERE orderdate = CAST('2022-01-14' AS DATE);
-- endregion


-- region DATETIME 支持的语言中立的格式如下
-- ----------------------------------------------------------------------------------------------------
SELECT CAST('20230212' AS DATETIME);

SELECT CAST('20230212 11:11:11.123' AS DATETIME);

SELECT CAST('2023-02-12T11:11:11.123' AS DATETIME);
-- endregion


-- region DATETIME2 支持的语言中立的格式如下
-- ----------------------------------------------------------------------------------------------------
SELECT CAST('20230212' AS DATETIME2);

SELECT CAST('20230212 11:11:11.123' AS DATETIME2);

SELECT CAST('2023-02-12T11:11:11.123' AS DATETIME2);

SELECT CAST('2023-02-12' AS DATETIME2);

SELECT CAST('2023-02-12 11:11:11.123' AS DATETIME2);
-- endregion


-- region 注意, 下面两种格式, 对于 DATETIME 类型, 不同的语言下解析的结果不一样, 也就是说它们是语言相关的,
-- ----------------------------------------------------------------------------------------------------
SET LANGUAGE British;
SELECT CAST('2023-02-12' AS DATETIME);

SET LANGUAGE us_english;
SELECT CAST('2023-02-12' AS DATETIME);

SET LANGUAGE British;
SELECT CAST('2023-02-12 11:11:11.123' AS DATETIME);

SET LANGUAGE us_english;
SELECT CAST('2023-02-12 11:11:11.123' AS DATETIME);
-- endregion
