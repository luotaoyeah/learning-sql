-- 2.7.3 operators and functions

-- 使用 + 拼接字符串时, 只要其中一个为 NULL, 则拼接的结果也为 NULL,

SELECT '1' + NULL + '2' AS result;


-- 使用 CONCAT() 拼接字符串时, 会自动将 NULL 转换为空字符串,

SELECT CONCAT('1', NULL, '2') AS result;


-- 使用 CONCAT_WS() 拼接字符串, 第一个参数表示 separator,

SELECT CONCAT_WS(',', 1, 2, 3) AS result;
