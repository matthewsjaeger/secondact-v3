
              -- CreateOrUpdateSQLSchema.sql
    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO
    
    
      -- TABLE: Character

      -- CREATE DATABASE
      IF NOT EXISTS (SELECT * from sys.databases WHERE name = 'SecondActV3')
      BEGIN
          CREATE DATABASE [SecondActV3];
      END
        GO
        
     USE [SecondActV3];
GO
      
        -- TABLE: Character -- EXCLUDE READONLY: false

      IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'SqlOnAirTime') AND type in (N'U'))
      BEGIN
          CREATE TABLE SqlOnAirTime (
              [SqlOnAirTimeId] NVARCHAR(150) NOT NULL
              ,[TimeCreatedAt] DATETIME DEFAULT GETDATE()
              ,[Now] DATETIME DEFAULT GETDATE()
              ,[Today] DATE DEFAULT CONVERT (DATE, GETDATE())
            ,CONSTRAINT [PK_SqlOnAirTime] PRIMARY KEY CLUSTERED ([SqlOnAirTimeId] ASC)) ON [PRIMARY]
        END
      GO


      DECLARE @ObjectName NVARCHAR(100)

      
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ArchetypeName' AND Object_ID = Object_ID(N'Character'))
    BEGIN
            ALTER TABLE [dbo].[Character] ADD [ArchetypeName] NVARCHAR(150) NULL;
    END
    ELSE
    BEGIN 
        ALTER TABLE [dbo].[Character] ALTER COLUMN [ArchetypeName] NVARCHAR(150) NULL;
    
	END
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'EliteInfluences' AND Object_ID = Object_ID(N'Character'))
    BEGIN
            ALTER TABLE [dbo].[Character] ADD [EliteInfluences] NVARCHAR(max) NULL;
    END
    ELSE
    BEGIN 
        ALTER TABLE [dbo].[Character] ALTER COLUMN [EliteInfluences] NVARCHAR(max) NULL;
    
	END


            SELECT 'Successful' as Value
            FROM (SELECT NULL AS FIELD) as Result
            FOR XML AUTO

          