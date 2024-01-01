-- 2.7.2 collation

-- 查询所有的 collation
SELECT *
  FROM sys.fn_helpcollations()
 WHERE name LIKE 'chinese_prc%'


-- 使用 COLLATE 子句设置某个表达式的 collation,

SELECT lastname
  FROM hr.employees
 WHERE lastname = N'davis'

SELECT lastname
  FROM hr.employees
 WHERE lastname COLLATE chinese_prc_cs_as = N'davis'


-- 标准 SQL 中, 单引号用来包裹字符串字面量, 双引号用来包裹标识符(数据库名/表名/字段名...), 在 T-SQL 中还可以用 [] 来包裹标识符,

SELECT firstname + ' ' + lastname AS "姓 名",
       lastname + ' ' + firstname AS [名 姓]
  FROM hr.employees


-- 如果字符串中包含单引号, 则需要转义, 表示为两个单引号 ''

SELECT 1 AS 'it''s name';