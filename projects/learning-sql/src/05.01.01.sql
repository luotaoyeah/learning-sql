-- 5.1.1. cartesian product


USE sakila;

-- 如果 JOIN 语句不加 ON 条件, 则结果集是两个表的所有行组成的笛卡尔积, 这种叫做 CROSS JOIN,

SELECT first_name, last_name, address
  FROM customer
           INNER JOIN address;
