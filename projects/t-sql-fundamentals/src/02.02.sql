-- 2.2. predicates and operators

USE tsqlv6;

-- region 算术运算的结果类型, 是所有运算数中类型优先级最高的那个类型,
-- ----------------------------------------------------------------------------------------------------
-- INT / INT 的结果类型为 INT, 如下结果为 2,
SELECT 5 / 2 AS result;

-- 转换其中一个运算数的类型为 FLOAT, 如下结果为 2.5,
SELECT CAST(5 AS FLOAT) / 2 AS result;
-- endregion