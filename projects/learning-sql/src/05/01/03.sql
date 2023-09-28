-- 5.1.3. the ANSI join syntax


USE sakila;

-- 很多数据库都支持旧的联表查询语法, 如下, 两个表之间用逗号分隔(而不是用 JOIN 分隔), 联结条件是放到 WHERE 语句中的(而不是用 ON 子句),

SELECT first_name, last_name, address
  FROM customer
           JOIN address
           ON customer.address_id = address.address_id;

SELECT first_name, last_name, address
  FROM customer,
       address
 WHERE customer.address_id = address.address_id;