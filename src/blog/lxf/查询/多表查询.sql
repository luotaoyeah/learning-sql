-- 同时查询多个表, 结果集是这些表的笛卡尔乘积,
SELECT *
  FROM students,
       classes
 WHERE students.score >= 90
 ORDER BY students.id;


-- 给列起个别名
SELECT students.id 学生id, students.name 姓名, classes.id 班级id, classes.name 班级名称
  FROM students,
       classes;

-- 给表起个别名
SELECT s.id 学生id, s.name 姓名, c.id 班级id, c.name 班级名称
  FROM students AS s,
       classes AS c;