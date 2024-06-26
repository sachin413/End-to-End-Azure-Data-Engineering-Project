USE [AdventureWorksLT2022]
GO

SET IDENTITY_INSERT [SalesLT].[Customer] ON;


INSERT INTO [SalesLT].[Customer]
           ([CustomerID],
		   [NameStyle]
           ,[Title]
           ,[FirstName]
           ,[MiddleName]
           ,[LastName]
           ,[Suffix]
           ,[CompanyName]
           ,[SalesPerson]
           ,[EmailAddress]
           ,[Phone]
           ,[PasswordHash]
           ,[PasswordSalt]
           ,[rowguid]
           ,[ModifiedDate])
     VALUES
   (30501,0,'Mr.','David','R.','Jhonson','jr','John&Sons Company','adventure-works\jillian0',	'rays13@adventure-works.com','560-555-0171','UWGC2U8F7AUth2FuiT4agrBoxAFskHGQSxqP39B7zLQ=',	'yES3HZA=',	NEWID(),'2005-09-01 00:00:00.000'),
   (30502,	0,	'Ms.',	'Karen',	'A.',	'Lewis',	NULL,	'World of Bikes',	'adventure-works\jillian0',	'damk0@adventure-works.com',	'695-555-0158',	'U1/CrPqSzwLTtwgBehfpIl7f1LHSFpZw1rnG1sMzgjo=',	'QhHP+y8=',	NEWID(),	'2006-09-01 00:00:00.000')

GO

SET IDENTITY_INSERT [SalesLT].[Customer] OFF;



