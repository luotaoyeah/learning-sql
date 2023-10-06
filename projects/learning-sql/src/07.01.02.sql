-- 7.1.2. string manipulation


USE sakila;

-- LENGTH() 函数, 获取字符串的长度,

SELECT LENGTH('hello');

-- POSITION() 函数, 获取子串所在的索引, 从 1 开始,

SELECT POSITION('e' IN 'hello');

