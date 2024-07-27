-- 12.2.4 a batch as a unit of resolution

-- ----------------------------------------------------------------------------------------------------
-- 同一个批次中的所有语句会作为一个整体进行解析, 因此最佳实践是将 DDL 和 DML 放到不同批次,

DROP TABLE IF EXISTS HR.t1;
CREATE TABLE HR.t1
    (
        col1 INT
    );
GO

ALTER TABLE HR.t1 ADD col2 INT;
-- GO -- 这儿如果不加 GO 则后面解析 SELECT 时会提示找不到列 col2,

SELECT col1,
       col2
  FROM HR.t1;

DROP TABLE IF EXISTS HR.t1;
GO