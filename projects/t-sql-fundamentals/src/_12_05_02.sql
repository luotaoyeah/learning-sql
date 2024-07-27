-- 12.5.2 global temporary tables

-- ----------------------------------------------------------------------------------------------------
-- 表名前面加上两个 ## 作为前缀, 则它就是一个全局临时表(global temporary table),
-- 全局临时表会放到 tempdb.dbo 数据库下面,
-- 全局临时表对所有会话(session)有效,

DROP TABLE IF EXISTS ##global_table_01;
GO

CREATE TABLE ##global_table_01
    (
        id    INT
            PRIMARY KEY,
        value NVARCHAR(MAX) NOT NULL
    );
GO


INSERT INTO ##global_table_01
VALUES (1, 'A'),
       (2, 'B'),
       (3, 'C');


SELECT *
  FROM ##global_table_01;
GO