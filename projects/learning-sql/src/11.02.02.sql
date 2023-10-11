-- 11.2.2. simple case expressions

USE sakila;

-- 简单模式的 CASE 表达式:
--   CASE 后面有一个值, 每个 WHEN 后面有一个值(注意不是条件),
--   匹配的方式是 CASE 后面的值跟 WHEN 后面的值比较是否相等,

SELECT name,
       (CASE name
            WHEN 'Action' THEN '动作片'
            WHEN 'Animation' THEN '动画片'
            WHEN 'Comedy' THEN '喜剧片'
            WHEN 'Horror' THEN '恐怖片'
            WHEN 'Sci-Fi' THEN '科幻片'
            ELSE name
        END) AS cn
  FROM category;

-- 等价于下面的

SELECT name,
       (CASE
            WHEN name = 'Action' THEN '动作片'
            WHEN name = 'Animation' THEN '动画片'
            WHEN name = 'Comedy' THEN '喜剧片'
            WHEN name = 'Horror' THEN '恐怖片'
            WHEN name = 'Sci-Fi' THEN '科幻片'
            ELSE name
        END) AS cn
  FROM category;