-- 4.5.1. NULL trouble

-- region NOT IN (NULL, ...)
-- ----------------------------------------------------------------------------------------------------
-- 'TRUE'
-- 分析步骤如下:
--     1 IN (1, NULL)
--     1 = 1 OR 1 = NULL
--     TRUE OR UNKNOWN
--     TRUE
SELECT IIF(1 IN (1, NULL), 'TRUE', 'FALSE');

-- 'FALSE'
-- 分析步骤如下:
--     1 IN (2, NULL)
--     1 = 2 OR 1 = NULL
--     FALSE OR UNKNOWN
--     UNKNOWN
SELECT IIF(1 IN (2, NULL), 'TRUE', 'FALSE');

-- NOT IN 后面如果包含 NULL, 则结果始终为 UNKNOWN,

-- 'FALSE'
-- 分析步骤如下:
--     1 NOT IN (2, NULL)
--     NOT (1 IN (2, NULL))
--     NOT (1 = 2 OR 1 = NULL)
--     NOT (FALSE OR UNKNOWN)
--     NOT (UNKNOWN)
--     UNKNOWN
SELECT IIF(1 NOT IN (2, NULL), 'TRUE', 'FALSE');
-- endregion
