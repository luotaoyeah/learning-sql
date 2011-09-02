-- LIMIT  表示 pageSize
-- OFFSET 表示 pageSize * (pageIndex - 1)

-- 第 1 页
SELECT *
  FROM students
 LIMIT 5 OFFSET 0;


-- 第 2 页
SELECT *
  FROM students
 LIMIT 5 OFFSET 5;


-- OFFSET 超出最大数量时, 返回空集
SELECT *
  FROM students
 LIMIT 5 OFFSET 10;


-- OFFSET 默认为 0, 可以省略
SELECT *
  FROM students
 LIMIT 5;


-- 在  MYSQL 中, LIMIT <M> OFFSET <N> 可以写成 LIMIT <M>, <N>
SELECT *
  FROM students
 LIMIT 5, 5;