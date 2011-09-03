-- ORDER BY
-- 默认 ASC 表示正序, 可以省略, DESC 表示逆序
SELECT *
  FROM students
 WHERE score >= 80
 ORDER BY score DESC, gender;