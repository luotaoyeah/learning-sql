-- 9.4.1. the exists operator

USE sakila;

-- EXISTS 操作符, 用来判断后面的子查询的结果集是否为空, 为空则返回 FALSE, 不为空则返回 TRUE,

SELECT IF(EXISTS(
                    SELECT 1
                ) = TRUE, '是', '否') AS 结果;

SELECT IF(EXISTS(
                    SELECT 1
                     WHERE FALSE
                ) = TRUE, '是', '否') AS 结果;
