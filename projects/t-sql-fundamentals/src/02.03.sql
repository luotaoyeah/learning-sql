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

