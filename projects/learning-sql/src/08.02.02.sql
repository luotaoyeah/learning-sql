-- 8.2.2. counting distinct values

USE sakila;

-- COUNT(DISTINCT xxx) 表示对 xxx 列去重之后再计算行数, 如果不加 DISTINCT 表示计算所有行数,

SELECT COUNT(customer_id)
  FROM rental;

SELECT COUNT(DISTINCT customer_id)
  FROM rental;