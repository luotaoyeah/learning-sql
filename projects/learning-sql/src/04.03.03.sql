-- 4.3.3. membership conditions


USE sakila;

-- IN 后面可以使用子查询, 子查询的结果集只能包含一个列,

SELECT title, rating
  FROM film
 WHERE rating IN (
                     SELECT rating
                       FROM film
                      WHERE title LIKE '%PET%'
                 );