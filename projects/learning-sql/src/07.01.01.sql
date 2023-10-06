-- 7.1.1. string generation


USE sakila;

-- 字符串使用单引号包裹, 字符串中间的单引号使用 '' 进行转义,

SELECT 'it''s my dream.';

-- QUOTE() 函数表示对结果集中的值使用单引号包裹, 并且对中间的单引号进行转义,

SELECT QUOTE('it''s my dream.');

-- CHAR() 函数将 ASCII 码转换为字符,

SELECT CHAR(97);

-- ASCII() 函数将字符转换为 ASCII 码,

SELECT ASCII('a');