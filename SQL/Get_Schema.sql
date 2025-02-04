USE AdventureWorksLT2022;

SELECT
    s.name AS SchemaName,
    t.name AS TableName
FROM sys.schemas s
INNER JOIN sys.tables t
    ON t.schema_id = s.schema_id
WHERE s.name = 'SalesLT'

