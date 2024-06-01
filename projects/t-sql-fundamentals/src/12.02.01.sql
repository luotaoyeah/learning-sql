-- 12.2.1 a batch as a unit of parsing

-- batch 指的是将多条语句作为一个整体进行解析和执行, 使用 GO 作为一个 batch 的结束标识, 如果没有 GO 表示所有的语句属于同一个 batch,
-- GO 不是 t-sql 的关键字, 而是属于 sql server 的客户端(比如 SSMS, DATA-GRIP 等)的一个命令, 即客户端把 SQL 交给 sql server 解析和执行时, 是一批一批的进行,
-- 如果是通过 API 将 SQL 交给 sql server 执行, 而不是通过客户端, 则 API 也会提供相应的方法来分批进行,

-- 同一个 batch 中的多条语句属于一个整体, 如果其中一条语句解析失败(例如有语法错误), 则整个 batch 中的所有语句都不会执行,

PRINT 'BATCH A';

GO


PRINT 'BATCH B';
SELECT firstname
  FROM - hr.employees;

GO


PRINT 'BATCH C';

GO