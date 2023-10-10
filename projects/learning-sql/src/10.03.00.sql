-- 10.3. natural joins

USE sakila;

-- NATURAL JOIN, 跟 INNER JOIN 的区别是, 数据库会帮你组装 ON 条件, 而不用手动写 ON 条件,
-- 数据库帮你组装 ON 条件的规则是: 两个表中所有同名的列都会放入 ON 条件,
-- 类似地还有 NATURAL LEFT OUTER JOIN 等等,

SELECT customer.customer_id, rental.rental_id
  FROM customer
           NATURAL JOIN rental;

SELECT customer.customer_id, rental.rental_id
  FROM customer
           INNER JOIN rental
           ON customer.customer_id = rental.customer_id AND customer.last_update = rental.last_update;