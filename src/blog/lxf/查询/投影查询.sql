-- 只查询指定的列
SELECT id, score, name
  FROM students;

-- AS
-- 给结果集的列名设置别名
SELECT id, score AS 分数, name
  FROM students;


-- AS 可以省略, 直接使用空格分隔原名和别名
SELECT id, score 分数, name
  FROM students;