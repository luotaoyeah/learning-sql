-- 4.3.4. matching conditions


USE sakila;

-- 有两种通配符 `_` 和 `%`, `_` 匹配单个字符, `%` 匹配任意个字符(包括零个字符),

SELECT first_name
  FROM customer
 WHERE first_name LIKE 'ALL_N'
 ORDER BY first_name;


-- 使用 REGEXP 函数实现正则匹配,

SELECT first_name
  FROM customer
 WHERE first_name REGEXP 'ALL\\wN'
 ORDER BY first_name;