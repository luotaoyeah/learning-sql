-- 3.6. the group by and having clauses


USE sakila;


-- HAVING 跟 GROUP BY 配合使用, 作用是对分组后的每一个分组中的行进行过滤, 跟 WHERE 的区别是 WHERE 是对分组前所有的行进行过滤,
-- HAVING 后面可以是聚合函数(对每个分组进行聚合), 比如 `HAVING COUNT(*)`, WHERE 后面不允许是聚合函数,

SELECT first_name, last_name, COUNT(*)
  FROM customer
           INNER JOIN rental
           ON customer.customer_id = rental.customer_id
 GROUP BY customer.first_name,
          customer.last_name
HAVING COUNT(*) > 40;


-- HAVING 可以单独使用(没有 GROUP BY), 此时会有一个隐式的分组(即将所有行放到一个分组中),
-- HAVING 后面也可以是普通的过滤条件, 此时效果就跟使用 WHERE 一样,
-- 如下两个查询效果一样,

SELECT first_name, last_name
  FROM customer
 WHERE first_name = 'KELLY';

SELECT first_name, last_name
  FROM customer
HAVING first_name = 'KELLY';