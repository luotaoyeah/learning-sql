-- 3.6. the group by and having clauses


USE sakila;


-- region HAVING
-- ----------------------------------------------------------------------------------------------------
-- HAVING 和 WHERE 的区别:
--   1. WHERE 是对分组前的行进行过滤, 判断是否排除某行, 不能使用聚合函数
--   2. HAVING 是对分组后的分组进行过滤, 判断是否排除某个分组, 可以使用聚合函数
SELECT first_name,
       last_name,
       COUNT(*)
  FROM customer
           INNER JOIN rental
           ON customer.customer_id = rental.customer_id
 GROUP BY customer.first_name,
          customer.last_name
HAVING COUNT(*) > 40;
-- endregion
