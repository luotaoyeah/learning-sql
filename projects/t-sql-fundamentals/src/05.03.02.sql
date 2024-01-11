-- 5.3.2. view options


-- region OBJECT_DEFINITION, OBJECT_ID
-- ----------------------------------------------------------------------------------------------------
-- 查看视图定义
SELECT OBJECT_DEFINITION(OBJECT_ID('dbo.view_01'));
-- endregion

-- region WITH ENCRYPTION
-- ----------------------------------------------------------------------------------------------------
-- 选项 WITH ENCRYPTION 表示将视图的定义语句加密存储,
CREATE OR ALTER VIEW dbo.view_01 WITH ENCRYPTION
AS
(
SELECT *
FROM dbo.t_01 );
-- endregion
