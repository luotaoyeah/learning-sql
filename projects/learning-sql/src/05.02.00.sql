-- 5.2. joining three or more tables


USE sakila;

-- INNER JOIN 查询时, FROM 后面的多个表之间的顺序是无关的,
-- 下面三个查询是完全等价的,

SELECT customer.first_name, customer.last_name, city.city
  FROM customer
           INNER JOIN address
           ON customer.address_id = address.address_id
           INNER JOIN city
           ON address.city_id = city.city_id
 ORDER BY first_name,
          last_name,
          city;

SELECT customer.first_name, customer.last_name, city.city
  FROM address
           INNER JOIN customer
           ON customer.address_id = address.address_id
           INNER JOIN city
           ON address.city_id = city.city_id
 ORDER BY first_name,
          last_name,
          city;

SELECT customer.first_name, customer.last_name, city.city
  FROM city
           INNER JOIN address
           ON address.city_id = city.city_id
           INNER JOIN customer
           ON customer.address_id = address.address_id
 ORDER BY first_name,
          last_name,
          city;
