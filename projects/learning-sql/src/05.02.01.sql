-- 5.2.1. using subqueries as tables


USE sakila;

-- 可以对表和子查询进行联表查询,

SELECT first_name, last_name, city
  FROM customer
           INNER JOIN (SELECT address.address_id, city.city
                         FROM address
                                  INNER JOIN city
                                  ON address.city_id = city.city_id) addr
           ON customer.address_id = addr.address_id
 ORDER BY first_name,
          last_name;