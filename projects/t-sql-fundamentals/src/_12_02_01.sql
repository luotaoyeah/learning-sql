-- 12.2.1 a batch as a unit of parsing

-- ----------------------------------------------------------------------------------------------------
-- batch 指的是将多条语句作为一个整体进行解析和执行,

-- 使用 GO 作为一个 batch 的结束标识, 如果没有 GO 表示所有的语句属于同一个 batch,
-- GO 不是 t-sql 的关键字, 而是属于 sql server 的客户端(比如 SSMS, DataGrip 等)的一个命令, 即客户端把 SQL 交给 sql server 解析和执行时, 是一批一批的进行,
-- GO 后面不能加分号结尾, 否则语法错误,

-- ----------------------------------------------------------------------------------------------------
-- 同一个 batch 中的多条语句属于一个整体, 如果其中一条语句解析失败(例如有语法错误), 则整个 batch 中的所有语句都不会执行,

-- 如下, 一个批次两条语句, 两条语句都不会执行,
PRINT 'A';
PRINX 'B';
GO

-- 如下, 两个批次两条语句, 第一个批次可以成功执行, 第二个批次执行失败,
PRINT 'A';
GO
PRINX 'B';
GO

-- ----------------------------------------------------------------------------------------------------
-- 如果一个批次执行失败, 则它后面的批次能执行吗 ?
-- 答案是, 不同的客户端有不同的结果, SSMS 可以, Navicat 和 DataGrip 不可以,
PRINX 'A';
GO
PRINT 'B';
GO