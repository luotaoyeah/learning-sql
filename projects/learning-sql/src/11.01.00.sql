-- 11.1. what is conditional logic?

USE sakila;

-- CASE 和 END 是配对使用的,
-- ELSE 是可选的, 可以由多个 WHEN...THEN...

SELECT first_name,
       last_name,
       CASE
           WHEN active = 1 THEN 'ACTIVE'
           ELSE 'INACTIVE'
       END AS activity_type
  FROM customer;

SELECT first_name,
       last_name,
       CASE
           WHEN active = 1 THEN 'ACTIVE'
           WHEN active = 0 THEN 'INACTIVE'
       END AS activity_type
  FROM customer;