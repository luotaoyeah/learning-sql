SELECT *
  FROM students;

-- AND
SELECT *
  FROM students
 WHERE score >= 80
   AND gender = 'M';

-- OR
SELECT *
  FROM students
 WHERE (score >= 80 AND gender = 'M')
    OR (score < 80 AND gender = 'F');

-- NOT
-- 放在某个条件的最前面, 表示对这个条件取否
SELECT *
  FROM students
 WHERE ((score >= 80 AND gender = 'M') OR (score < 80 AND gender = 'F'))
   AND (NOT name = '小明');

