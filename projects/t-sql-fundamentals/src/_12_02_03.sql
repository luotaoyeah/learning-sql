-- 12.2.3 statements that cannot be combined in the same batch

-- ----------------------------------------------------------------------------------------------------
-- 有些语句不能和其他语句放在同一个批次中, 必须单独作为一个批次, 比如 CREATE VIEW,

DROP VIEW IF EXISTS HR.view01;
GO

-- -- [S0001][111] Line 5: 'CREATE VIEW' must be the first statement in a query batch.
CREATE VIEW HR.view01
AS

SELECT *
  FROM HR.Employees;
GO