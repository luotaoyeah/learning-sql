-- 8.2.4. how nulls are handled

USE sakila;

-- COUNT(xxx) 如果 xxx 列的值为 NULL, 则该行不会被计数,
-- SUM(xxx), MAX(xxx), AVG(xxx) 等会忽略 NULL,