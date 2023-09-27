-- 3.4.1 tables


USE sakila;


-- FROM 后面可以是一个子查询,
-- 子查询的结果集称之为 derived table, 必须给这个 derived table 定义别名,

SELECT CONCAT(cust.first_name, ', ', cust.last_name) AS full_name
  FROM (SELECT first_name, last_name, email FROM customer WHERE first_name = 'JESSIE') AS cust;

-- 创建一个视图,
CREATE VIEW vw_01
AS
SELECT CONCAT(first_name, ' ', last_name) AS full_name
  FROM actor
 ORDER BY first_name;

-- FROM 后面可以是一个视图,
SELECT full_name
  FROM vw_01;