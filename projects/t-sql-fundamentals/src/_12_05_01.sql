-- 12.5.1 local temporary tables

-- ----------------------------------------------------------------------------------------------------
-- 表名前面加上一个 # 作为前缀, 则它就是一个本地临时表(local temporary table),
-- 本地临时表会放到 tempdb.dbo 数据库下面, 并且会自动加上后缀用于防止命名冲突,
-- 本地临时表只对当前会话(session)有效,

DROP TABLE IF EXISTS #local_table_01;
GO

CREATE TABLE #local_table_01
    (
        id    INT
            PRIMARY KEY,
        value NVARCHAR(MAX) NOT NULL
    );
GO


INSERT INTO #local_table_01
VALUES (1, 'A'),
       (2, 'B'),
       (3, 'C');


SELECT *
  FROM #local_table_01;
GO