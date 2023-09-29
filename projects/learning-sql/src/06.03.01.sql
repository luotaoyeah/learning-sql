-- 6.3.1. the union operator


USE sakila;

-- union, union all, intersect, intersect all, except, except all 这些集合运算符, 是用来对多个结果集进行集合运算,
-- 当两个结果集满足如下两个条件时, 他们可以进行集合运算:
--  1. 列数相同
--  2. 每列的类型是兼容的

-- 集合运算针对的是结果集的行(相反的, JOIN 操作针对的是列),
-- union all 是求两个结果集的并集,

SELECT 'C' AS c, customer.first_name, customer.last_name
  FROM customer
 UNION ALL
SELECT 'A' AS c, actor.first_name, actor.last_name
  FROM actor;