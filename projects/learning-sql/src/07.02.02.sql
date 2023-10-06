-- 7.2.2. controlling number precision


USE sakila;

-- CEIL() 函数, 向上取整,

SELECT CEIL(3.01);


-- FLOOR() 函数, 向下取整,

SELECT FLOOR(3.99);


-- ROUND() 函数, 四舍五入, 可以指定小数位数(默认 0 位小数), 小数位数可以为负数,

SELECT ROUND(17.14);
SELECT ROUND(17.14, 1);
SELECT ROUND(17.14, -1);


-- TRUNCATE() 函数跟 ROUND() 的区别是:
--   1. 直接去掉多余的位数, 而不是四舍五入,
--   2. 必须指定小数位数,

SELECT TRUNCATE(17.14, 0);
SELECT TRUNCATE(17.14, 1);
SELECT TRUNCATE(17.14, -1);
