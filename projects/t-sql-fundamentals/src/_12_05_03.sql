-- 12.5.3 table variables

-- ----------------------------------------------------------------------------------------------------
-- table 变量本质上是一个变量, 使用 DECLARE 声明, 表明前面使用 @ 作为前缀, 变量类型为 TABLE, 作用域为当前批次,
-- table 变量也会存放在 tempdb.dbo 数据库中,
-- table 变量比本地临时表更加轻量, 一般用于存放少量数据时使用,

DECLARE @table_variable_01 AS TABLE
                                  (
                                      id    INT
                                          PRIMARY KEY,
                                      valur NVARCHAR(MAX)
                                  );

INSERT INTO @table_variable_01
VALUES (1, 'A'),
       (2, 'B'),
       (3, 'C');

SELECT *
  FROM @table_variable_01;
GO