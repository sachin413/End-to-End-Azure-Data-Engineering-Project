SELECT 
s.name as SchemaName,
t.name as TableName
FROM sys.tables t
INNER JOIN sys.schemas s
ON t.schema_id=s.schema_id
where s.name='SalesLT';