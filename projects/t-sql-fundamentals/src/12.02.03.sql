-- 12.2.3 statements that cannot be combined in the same batch

-- 有些语句不能和其他语句放在同一个 batch 中, 比如 CREATE VIEW,

DROP VIEW IF EXISTS hr.view01;

---- 'CREATE VIEW' must be the first statement in a query batch.

CREATE VIEW hr.view01
AS

SELECT *
  FROM hr.employees;

GO