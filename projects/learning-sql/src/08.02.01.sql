-- 8.2.1. implicit versus explicit groups

-- 聚合函数 MAX(), MIN(), COUNT(), ... 跟 GROUP BY 一起使用时, 是对每个分组进行聚合,
-- 当没有 GROUP BY 时, 相当于有一个隐式的分组,

SELECT COUNT(*)
  FROM rental;

SELECT customer_id, COUNT(*)
  FROM rental
 GROUP BY customer_id;