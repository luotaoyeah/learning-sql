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


-- region 如果数据本身包含这些特殊字符(%_[]), 则可以如下进行转义,
-- 在特殊字符前面加上某个字符(比如下面的 ! 和 #, 需要确保这个字符不会出现在数据本身中), 然后在最后使用 ESCAPE '!' 或者 ESCAPE '#' 表示对 ! 和 # 后面的字符进行转义,
-- ----------------------------------------------------------------------------------------------------
SELECT *
  FROM STRING_SPLIT('A_C,ABC', ',')
 WHERE value LIKE 'A!_C' ESCAPE '!';

SELECT *
  FROM STRING_SPLIT('A_C,ABC', ',')
 WHERE value LIKE 'A#_C' ESCAPE '#';
-- endregion
