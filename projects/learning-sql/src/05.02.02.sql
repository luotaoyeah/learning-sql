-- 5.2.2. using the same table twice


USE sakila;

-- 同一个表可以 JOIN 多次,
-- 比如表 A 和表 B 是一对多(或者多对多)的关系, 则 A 可以对 B 多次 JOIN, 每次 JOIN 使用不同的条件,

SELECT film.title, CONCAT_WS(' ', actor01.first_name, actor01.last_name) AS actor01, CONCAT_WS(' ', actor02.first_name, actor02.last_name) actor02
  FROM film
           INNER JOIN film_actor film_actor01
           ON film.film_id = film_actor01.film_id
           INNER JOIN actor actor01
           ON film_actor01.actor_id = actor01.actor_id

           INNER JOIN film_actor film_actor02
           ON film.film_id = film_actor02.film_id
           INNER JOIN actor actor02
           ON film_actor02.actor_id = actor02.actor_id
 WHERE (actor01.first_name = 'CATE' AND actor01.last_name = 'MCQUEEN')
   AND (actor02.first_name = 'CUBA' AND actor02.last_name = 'BIRCH');