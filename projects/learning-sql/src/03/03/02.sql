/* 3.3.2. removing duplicates */

USE sakila;

-- DISTINCT 是对结果集中的所有列进行去重, 不是(不能)只对某些列去重

SELECT actor_id, film_id
  FROM film_actor
 ORDER BY actor_id;

SELECT DISTINCT actor_id
  FROM film_actor
 ORDER BY actor_id;

SELECT DISTINCT actor_id, film_id
  FROM film_actor
 ORDER BY actor_id;

SELECT DISTINCT first_name, last_name
  FROM actor
 WHERE last_name = 'AKROYD';