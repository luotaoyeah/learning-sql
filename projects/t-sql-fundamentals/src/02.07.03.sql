-- 2.7.3 operators and functions

-- 使用 + 拼接字符串时, 只要其中一个为 NULL, 则拼接的结果也为 NULL,

SELECT '1' + NULL + '2' AS result;


-- 使用 CONCAT() 拼接字符串时, 会自动将 NULL 转换为空字符串,

SELECT CONCAT('1', NULL, '2') AS result;


-- 使用 CONCAT_WS() 拼接字符串, 第一个参数表示 separator,

SELECT CONCAT_WS(',', 1, 2, 3) AS result;


-- STRING_SPLIT(), 将一个字符串根据 separator 分割成多个字符串, 返回结果是一个表, 该表只有一个列 value, 该表的每一行就是分割后的每一个字符串,

SELECT *
  FROM STRING_SPLIT('a,b,c', ',');


-- STRING_AGG(), 将分组中的每一行的某一列的值(也可以是表达式), 使用 separator 拼接成一个字符串,

SELECT STRING_AGG(id, ','), sex
  FROM (
           SELECT 1 AS id, N'男' AS sex UNION ALL SELECT 2 AS id, N'男' AS sex UNION ALL SELECT 3 AS id, N'男' AS sex UNION ALL SELECT 4 AS id, N'女' AS sex UNION ALL SELECT 5 AS id, N'女' AS sex
       ) AS temp_t
 GROUP BY sex;

SELECT STRING_AGG(id, ',') WITHIN GROUP (ORDER BY id), sex
  FROM (
           SELECT 1 AS id, N'男' AS sex UNION ALL SELECT 2 AS id, N'男' AS sex UNION ALL SELECT 3 AS id, N'男' AS sex UNION ALL SELECT 4 AS id, N'女' AS sex UNION ALL SELECT 5 AS id, N'女' AS sex
       ) AS temp_t
 GROUP BY sex;
