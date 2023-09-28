-- 3.3.2. removing duplicates

USE sakila;

-- DISTINCT 是对结果集中的所有列的组合进行去重, 不是只对某些列去重,
-- DISTINCT 需要对结果集进行排序, 然后去重, 因此会花费额外的时间,

SELECT actor_id
  FROM film_actor
 ORDER BY actor_id;

SELECT DISTINCT actor_id
  FROM film_actor
 ORDER BY actor_id;

SELECT actor_id, film_id
  FROM film_actor
 ORDER BY actor_id;

SELECT DISTINCT (actor_id), film_id
  FROM film_actor
 ORDER BY actor_id;

SELECT DISTINCT first_name, last_name
  FROM actor
 WHERE last_name = 'AKROYD';