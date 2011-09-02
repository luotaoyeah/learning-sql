-- COUNT
SELECT COUNT(*) AS 行数
  FROM students;

SELECT MAX(score) 最高分
  FROM students;

SELECT MIN(score) 最低分
  FROM students;

SELECT AVG(score) 平均分
  FROM students;

SELECT SUM(score) 总分
  FROM students;

-- 使用 GROUP BY 分组, 然后分别对每个分组进行聚合查询
SELECT gender AS 性别, COUNT(*)
  FROM students
 GROUP BY gender;

-- 按多个列进行分组
SELECT class_id AS 班级, gender AS 性别, COUNT(*)
  FROM students
 GROUP BY class_id, gender;

SELECT gender 性别
  FROM students
 GROUP BY gender