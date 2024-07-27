-- 12.5.4 table types

-- ----------------------------------------------------------------------------------------------------
-- 可以将表的定义存起来, 取一个名字, 重复使用, 称之为 table 类型,
-- table 类型存放在 sys 数据库中,

DROP TYPE IF EXISTS type_table_01;
GO

CREATE TYPE type_table_01 AS TABLE
(
    id    INT
        PRIMARY KEY,
    value NVARCHAR
);
GO

DECLARE @table_01 type_table_01;
DECLARE @table_02 type_table_01;

INSERT INTO @table_01
VALUES (1, 'A');

INSERT INTO @table_02
VALUES (2, 'B');

SELECT *
  FROM @table_01;

SELECT *
  FROM @table_02;
GO
