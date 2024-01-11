-- 5.4. inline table-valued functions

-- region TVF 类似于视图, 但是它可以接收参数,
-- ----------------------------------------------------------------------------------------------------
CREATE OR ALTER FUNCTION dbo.fn_get_by_id(@id AS INT)
    RETURNS TABLE AS RETURN WITH t_inner AS (
                                                SELECT 1 AS id, 'A' AS value
                                                 UNION ALL
                                                SELECT 2 AS id, 'B' AS value
                                                 UNION ALL
                                                SELECT 3 AS id, 'C' AS value
                                            )
                          SELECT id,
                                 value
                            FROM t_inner
                           WHERE id = @id;

-- TVF 跟 table, view 一样可以位于 FROM 子句,

SELECT *
  FROM fn_get_by_id(3);

-- endregion
