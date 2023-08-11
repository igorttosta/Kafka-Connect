ALTER DATABASE databasename SET ALLOW_SNAPSHOT_ISOLATION ON;
USE databasename;
EXEC sys.sp_cdc_enable_db;

EXEC sys.sp_cdc_enable_table
    @source_schema = 'dbo',
    @source_name = 'USER_',
    @role_name = null,
    @supports_net_changes = 1;

EXEC sys.sp_cdc_enable_table
    @source_schema = 'dbo',
    @source_name = 'USER_PURCHASE',
    @role_name = null,
    @supports_net_changes = 1;