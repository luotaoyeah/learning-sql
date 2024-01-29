-- 7.1 window functions

  WITH t_01 AS (
                   SELECT 1 AS id,
                          2 AS [order],
                          2 AS value
                    UNION ALL
                   SELECT 1 AS id,
                          1 AS [order],
                          1 AS value
                    UNION ALL
                   SELECT 1 AS id,
                          3 AS [order],
                          3 AS value
                    UNION ALL
                   SELECT 2 AS id,
                          2 AS [order],
                          2 AS value
                    UNION ALL
                   SELECT 2 AS id,
                          1 AS [order],
                          1 AS value
                    UNION ALL
                   SELECT 2 AS id,
                          3 AS [order],
                          3 AS value
               )
SELECT id,
       [order],
       -- 关键字 OVER 表示这里是 window function,
       -- SUM() 是很多种 window function 中的一种,
       -- OVER () 括号中的部分称为 window specification,
       -- PARTITION BY 表示分组,
       -- ORDER BY 表示排序, 对该分组的数据进行排序,
       -- ROWS BETWEEN ... AND ... 称为 window frame 子句, 用来限制 window function 执行时所针对的数据行,
       --    UNBOUNDED PRECEDING 表示从分组的第一行开始,
       --    CURRENT ROW         表示到当前行为止, 包含当前行,
       SUM(value) OVER ( PARTITION BY id ORDER BY [order] ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW )
  FROM t_01;
