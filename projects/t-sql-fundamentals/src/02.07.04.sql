-- 2.7.4 the LIKE predicate

-- region 通配符 % 表示任意字符串, 包括空字符串
-- ----------------------------------------------------------------------------------------------------
-- endregion


-- region 通配符 _ 表示任意一个字符
-- ----------------------------------------------------------------------------------------------------
SELECT value
  FROM STRING_SPLIT('HELLO,WORLD,HOLY', ',')
 WHERE value LIKE '_O%';
-- endregion


-- region [BCD] 表示 BCD 中的任意一个字符
-- ----------------------------------------------------------------------------------------------------
SELECT *
  FROM STRING_SPLIT('A_,B_,C_,D_,E_', ',')
 WHERE value LIKE '[BCD]%';
-- endregion


-- region [B-D] 表示 B-D 这个范围内的任意一个字符
-- ----------------------------------------------------------------------------------------------------
SELECT *
  FROM STRING_SPLIT('A_,B_,C_,D_,E_', ',')
 WHERE value LIKE '[B-D]%';
-- endregion


-- region [^BCD] 表示 [BCD] 的否定, [^B-D] 表示 [B-D] 的否定
-- ----------------------------------------------------------------------------------------------------
SELECT *
  FROM STRING_SPLIT('A_,B_,C_,D_,E_', ',')
 WHERE value LIKE '[^BCD]%';

SELECT *
  FROM STRING_SPLIT('A_,B_,C_,D_,E_', ',')
 WHERE value LIKE '[^B-D]%';
-- endregion
