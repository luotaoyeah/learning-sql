-- 4.3.2. range conditions


USE sakila;

-- `foo BETWEEN x AND y` 等价于 `foo >= x AND foo <= y`, 即左右的值都是包含的,

SELECT customer_id, first_name, last_name
  FROM customer
 WHERE customer_id BETWEEN 3 AND 5;

SELECT customer_id, first_name, last_name
  FROM customer
 WHERE customer_id >= 3
   AND customer_id <= 5;