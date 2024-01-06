-- 5.3. views

-- region CREATE VIEW
-- ----------------------------------------------------------------------------------------------------
CREATE OR ALTER VIEW dbo.view_01
AS
(
SELECT *
FROM dbo.t_01 );

-- 如果视图定义中使用了 SELECT *, 则当视图定义完成之后, 如果依赖的表结构发生了变化, 需要调用存储过程 sp_refreshview 之后, 视图才会更新,

EXEC sp_refreshview [dbo.view_01];
-- endregion