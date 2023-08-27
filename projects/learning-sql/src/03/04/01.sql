-- 3.4.1 tables


USE sakila;


-- FROM 子句中的子查询
SELECT CONCAT(first_name, ', ', last_name) AS full_name
  FROM (SELECT first_name, last_name, email FROM customer WHERE first_name = 'JESSIE') AS cust;

-- 创建一个视图
CREATE VIEW vw_01
AS
SELECT CONCAT(first_name, ' ', last_name) AS full_name
  FROM actor
 ORDER BY first_name