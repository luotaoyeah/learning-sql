-- 2.3. CASE expressions

USE tsqlv6;

-- 简单模式(simple)的 CASE, CASE 后面的值跟每个 WHEN 后面的值比较是否相等,

SELECT supplierid,
       COUNT(*) AS num,
       (CASE COUNT(*) % 2
            WHEN 0 THEN 'EVEN'
            WHEN 1 THEN 'ODD'
            ELSE 'UNKNOWN'
        END) AS parity
  FROM production.products
 GROUP BY supplierid;

-- ISNULL(x, y), 接受两个参数, 如果 x 不为 NULL 则结果为 x, 如果 x 为 NULL 则结果为 y,

SELECT ISNULL(NULL, 'FOO');

-- COALESCE(x, y, z, ...), 可以接收多个参数, 结果为第一个不为 NULL 的值,

SELECT COALESCE(NULL, 'FOO', 'BAR', NULL);

-- IIF(), 三元表达式,

SELECT IIF(1 > 0, 'Y', 'N');


