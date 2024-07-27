-- 12.8 error handling

-- ----------------------------------------------------------------------------------------------------
-- BEGIN TRY...END TRY
-- BEGIN CATCH...END CATCH

BEGIN TRY
    PRINT 1 / 0;
END TRY BEGIN CATCH
    PRINT 'ERROR_LINE(): ' + CAST(ERROR_LINE() AS NVARCHAR);
    PRINT 'ERROR_MESSAGE(): ' + CAST(ERROR_MESSAGE() AS NVARCHAR);
    PRINT 'ERROR_NUMBER(): ' + CAST(ERROR_NUMBER() AS NVARCHAR);
    PRINT 'ERROR_SEVERITY(): ' + CAST(ERROR_SEVERITY() AS NVARCHAR);
    PRINT 'ERROR_STATE(): ' + CAST(ERROR_STATE() AS NVARCHAR);
END CATCH;



