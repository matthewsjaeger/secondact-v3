
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

          

IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'SecondActV3_SQLonAir')
  BEGIN
    CREATE DATABASE [SecondActV3_SQLonAir]
  END
GO
use [SecondActV3_SQLonAir];
IF NOT EXISTS(SELECT * FROM sys.schemas WHERE name = 'comp')
  BEGIN
    EXEC ('CREATE SCHEMA comp')
  END
GO


GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[comp].[Character]'))
DROP VIEW [comp].[Character];
GO
create view [comp].[Character]
AS
SELECT [SecondActV3].[dbo].[Character].[Id]
    
        ,[SecondActV3].[dbo].[Character].[ArchetypeTypeCustom]
    

    
        ,[SecondActV3].[dbo].[Character].[ArchetypeTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[AttributeTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[AuspiceTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[Bonds]
    

    
        ,[SecondActV3].[dbo].[Character].[BreedTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[CharacterTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[ChronicleId]
    

    
        ,[SecondActV3].[dbo].[Character].[ClanTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[CourtTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[DateStartTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[DeedName]
    

    
        ,[SecondActV3].[dbo].[Character].[Equipment]
    

    
        ,[SecondActV3].[dbo].[Character].[FirstName]
    

    
        ,[SecondActV3].[dbo].[Character].[FlawsDisplay]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusAppearance]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusCharisma]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusDexterity]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusIntelligence]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusManipulation]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusPerception]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusStamina]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusStrength]
    

    
        ,[SecondActV3].[dbo].[Character].[FocusWits]
    

    
        ,[SecondActV3].[dbo].[Character].[GenerationTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[HistoryPublic]
    

    
        ,[SecondActV3].[dbo].[Character].[HistoryStorytellers]
    

    
        ,[SecondActV3].[dbo].[Character].[IsNpc]
    

    
        ,[SecondActV3].[dbo].[Character].[IsVisible]
    

    
        ,[SecondActV3].[dbo].[Character].[KithTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[LastName]
    

    
        ,[SecondActV3].[dbo].[Character].[MeritsDisplay]
    

    
        ,[SecondActV3].[dbo].[Character].[Notes]
    

    
        ,[SecondActV3].[dbo].[Character].[PlayerId]
    

    
        ,[SecondActV3].[dbo].[Character].[Positions]
    

    
        ,[SecondActV3].[dbo].[Character].[Quotes]
    

    
        ,[SecondActV3].[dbo].[Character].[RealmTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[SectTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[StockNpcRating]
    

    
        ,[SecondActV3].[dbo].[Character].[TraitMental]
    

    
        ,[SecondActV3].[dbo].[Character].[TraitPhysical]
    

    
        ,[SecondActV3].[dbo].[Character].[TraitSocial]
    

    
        ,[SecondActV3].[dbo].[Character].[TribeTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[UpdatedById]
    

    
        ,[SecondActV3].[dbo].[Character].[UpdatedOn]
    

    
        ,[SecondActV3].[dbo].[Character].[WantsPcRelations]
    

    
        ,[SecondActV3].[dbo].[Character].[XpEarned]
    

    
        ,[SecondActV3].[dbo].[Character].[XpPip]
    

    
        ,[SecondActV3].[dbo].[Character].[XpStModifer]
    

    
        ,[SecondActV3].[dbo].[Character].[XpUnspent]
    

    
        ,[SecondActV3].[dbo].[Character].[CharacterAuditStatusTypeId]
    

    
        ,[SecondActV3].[dbo].[Character].[CreatedById]
    

    
        ,[SecondActV3].[dbo].[Character].[CreatedOn]
    

    
        ,[SecondActV3].[dbo].[Character].[PlayedById]
    

    
        ,[SecondActV3].[dbo].[Character].[UnderworldInfluences]
    

    
        ,[SecondActV3].[dbo].[Character].[FinalInfluences]
    

    
        ,[SecondActV3].[dbo].[Character].[Created]
    

    
        ,[SecondActV3].[dbo].[Character].[FullName]
    

    
        ,[SecondActV3].[dbo].[Character].[ClanTypeName]
    

    
        ,[SecondActV3].[dbo].[Character].[ChronicalName]
    

    
        ,(select [Name] from [SecondActV3].[dbo].[ArchetypeType] where [SecondActV3].[dbo].[ArchetypeType].[Id] = [SecondActV3].[dbo].[Character].[ArchetypeTypeId]) as [ArchetypeName]
    

    
        ,(select string_agg([Notes],',') from [SecondActV3].[dbo].[Background] where [SecondActV3].[dbo].[Background].[CharacterId] = [SecondActV3].[dbo].[Character].[Id] and SecondActV3.[dbo].[Background].[BackgroundTypeId]=9 AND SecondActV3.[dbo].[Background].[Notes] IS NOT NULL) as [EliteInfluences]
        

    
FROM [SecondActV3].[dbo].[Character]


GO
    
                


-- *************************************************************
-- Script to create (or update) SQL On Air Database
-- Mode: split
-- Original DB: SecondActV3
-- SqlOnAir DB: SecondActV3_SQLonAir
-- *************************************************************    
       
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'SecondActV3_SQLonAir')
  BEGIN
    CREATE DATABASE [SecondActV3_SQLonAir]
  END
GO

CREATE OR ALTER PROCEDURE sp_SQLOnAir_SyncTime @Time DATETIME = null
AS
	DECLARE @CreatedAt DATETIME = GETDATE()
	DECLARE @Now DATETIME = IIF(@Time is null, @CreatedAt, @Time)
	DECLARE @Today DATE = CONVERT(DATE, @Now)
	INSERT INTO SqlOnAirTime ([SqlONAirTimeId], [TimeCreatedAt], [Now], [Today]) values (CONVERT(NVARCHAR(150), NEWID()), @CreatedAt, @Now, @Today)
  
GO






-- *************************************************************
-- Cascading handling of Synchronising changes from the [ArchetypeType] table.
-- *************************************************************    
CREATE OR ALTER Procedure sp_SQLOnAir_SyncArchetypeType @Id nvarchar(150)
AS






    
      
        UPDATE old set old.[ArchetypeName] = new.[ArchetypeName]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE new.[ArchetypeTypeId] = @Id --ColumnTrigger
        AND coalesce(cast(old.[ArchetypeName] as nvarchar(2000)), '') != coalesce(cast(new.[ArchetypeName] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
        
    
  



GO





-- *************************************************************
-- Cascading handling of Synchronising changes from the [Background] table.
-- *************************************************************    
CREATE OR ALTER Procedure sp_SQLOnAir_SyncBackground @Id nvarchar(150)
AS




    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE new.[Id] = (select [CharacterId] FROM [SecondActV3].[dbo].[Background] where [Id] = @Id)
        AND coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
        
    
  


    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
      
    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
      
    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
      
    
  






    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE new.[Id] = (select [CharacterId] FROM [SecondActV3].[dbo].[Background] where [Id] = @Id)
        AND coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
        
    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE new.[Id] = (select [CharacterId] FROM [SecondActV3].[dbo].[Background] where [Id] = @Id)
        AND coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
        
    
  















GO





-- *************************************************************
-- Cascading handling of Synchronising changes from the [Character] table.
-- *************************************************************    
CREATE OR ALTER Procedure sp_SQLOnAir_SyncCharacter @Id nvarchar(150)
AS






    
      
        UPDATE old set old.[ArchetypeName] = new.[ArchetypeName]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE new.[Id] = @Id -- FKTrigger
        AND coalesce(cast(old.[ArchetypeName] as nvarchar(2000)), '') != coalesce(cast(new.[ArchetypeName] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
        
    
  

























































































































GO



-- *************************************************************
-- Script to create (or update) SQL On Air Database
-- *************************************************************    
              
CREATE OR ALTER Procedure sp_SQLOnAir_SyncAll
AS

EXEC sp_SQLOnAir_SyncTime



-- *************************************************************
-- Cascading handling of Synchronising changes from the [ArchetypeType] table.
-- *************************************************************    





-- *************************************************************
-- Cascading handling of Synchronising changes from the [Background] table.
-- *************************************************************    



    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
      
    
  


    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
      
    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
      
    
      
        UPDATE old set old.[EliteInfluences] = new.[EliteInfluences]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE coalesce(cast(old.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(new.[EliteInfluences] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
      
    
  




-- *************************************************************
-- Cascading handling of Synchronising changes from the [Character] table.
-- *************************************************************    



    
      
        UPDATE old set old.[ArchetypeName] = new.[ArchetypeName]
        FROM [SecondActV3].[dbo].[Character] old join [comp].[Character] new
        ON old.[Id] = new.[Id]
        WHERE coalesce(cast(old.[ArchetypeName] as nvarchar(2000)), '') != coalesce(cast(new.[ArchetypeName] as nvarchar(2000)),'') COLLATE Latin1_General_CS_AS
      
    
  










































GO    

EXEC sp_SQLOnAir_SyncAll
GO

 
  
DECLARE @dropConflictingSOATriggers NVARCHAR(MAX) = N'';

SELECT @dropConflictingSOATriggers += 
    N'DROP TRIGGER ' + 
    QUOTENAME(OBJECT_SCHEMA_NAME(t.object_id)) + N'.' + 
    QUOTENAME(t.name) + N'; ' + NCHAR(13)
FROM sys.triggers AS t
WHERE t.is_ms_shipped = 0
  AND t.parent_class_desc = N'OBJECT_OR_COLUMN'
  AND name like 'tr_SQLOnAir_After%';

EXEC (@dropConflictingSOATriggers);   
GO

    

-- *************************************************************
-- Cascading handling of [__EFMigrationsHistory] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[__EFMigrationsHistory] as select * from [SecondActV3].[dbo].[__EFMigrationsHistory]
GO

-- *************************************************************
-- Cascading handling of [__EFMigrationsHistory2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[__EFMigrationsHistory2] as select * from [SecondActV3].[dbo].[__EFMigrationsHistory2]
GO

-- *************************************************************
-- Cascading handling of [__EFMigrationsHistory3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[__EFMigrationsHistory3] as select * from [SecondActV3].[dbo].[__EFMigrationsHistory3]
GO

-- *************************************************************
-- Cascading handling of [__EFMigrationsHistory4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[__EFMigrationsHistory4] as select * from [SecondActV3].[dbo].[__EFMigrationsHistory4]
GO

-- *************************************************************
-- Cascading handling of [__EFMigrationsHistory5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[__EFMigrationsHistory5] as select * from [SecondActV3].[dbo].[__EFMigrationsHistory5]
GO

-- *************************************************************
-- Cascading handling of [ArchetypeType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ArchetypeType] as select * from [SecondActV3].[dbo].[ArchetypeType]
GO

-- *************************************************************
-- Cascading handling of [ArchetypeType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ArchetypeType2] as select * from [SecondActV3].[dbo].[ArchetypeType2]
GO

-- *************************************************************
-- Cascading handling of [ArchetypeType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ArchetypeType3] as select * from [SecondActV3].[dbo].[ArchetypeType3]
GO

-- *************************************************************
-- Cascading handling of [ArchetypeType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ArchetypeType4] as select * from [SecondActV3].[dbo].[ArchetypeType4]
GO

-- *************************************************************
-- Cascading handling of [ArchetypeType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ArchetypeType5] as select * from [SecondActV3].[dbo].[ArchetypeType5]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoleClaims] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoleClaims] as select * from [SecondActV3].[dbo].[AspNetRoleClaims]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoleClaims2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoleClaims2] as select * from [SecondActV3].[dbo].[AspNetRoleClaims2]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoleClaims3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoleClaims3] as select * from [SecondActV3].[dbo].[AspNetRoleClaims3]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoleClaims4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoleClaims4] as select * from [SecondActV3].[dbo].[AspNetRoleClaims4]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoleClaims5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoleClaims5] as select * from [SecondActV3].[dbo].[AspNetRoleClaims5]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoles] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoles] as select * from [SecondActV3].[dbo].[AspNetRoles]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoles2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoles2] as select * from [SecondActV3].[dbo].[AspNetRoles2]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoles3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoles3] as select * from [SecondActV3].[dbo].[AspNetRoles3]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoles4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoles4] as select * from [SecondActV3].[dbo].[AspNetRoles4]
GO

-- *************************************************************
-- Cascading handling of [AspNetRoles5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetRoles5] as select * from [SecondActV3].[dbo].[AspNetRoles5]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserClaims] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserClaims] as select * from [SecondActV3].[dbo].[AspNetUserClaims]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserClaims2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserClaims2] as select * from [SecondActV3].[dbo].[AspNetUserClaims2]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserClaims3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserClaims3] as select * from [SecondActV3].[dbo].[AspNetUserClaims3]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserClaims4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserClaims4] as select * from [SecondActV3].[dbo].[AspNetUserClaims4]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserClaims5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserClaims5] as select * from [SecondActV3].[dbo].[AspNetUserClaims5]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserLogins] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserLogins] as select * from [SecondActV3].[dbo].[AspNetUserLogins]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserLogins2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserLogins2] as select * from [SecondActV3].[dbo].[AspNetUserLogins2]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserLogins3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserLogins3] as select * from [SecondActV3].[dbo].[AspNetUserLogins3]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserLogins4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserLogins4] as select * from [SecondActV3].[dbo].[AspNetUserLogins4]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserLogins5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserLogins5] as select * from [SecondActV3].[dbo].[AspNetUserLogins5]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserRoles] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserRoles] as select * from [SecondActV3].[dbo].[AspNetUserRoles]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserRoles2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserRoles2] as select * from [SecondActV3].[dbo].[AspNetUserRoles2]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserRoles3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserRoles3] as select * from [SecondActV3].[dbo].[AspNetUserRoles3]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserRoles4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserRoles4] as select * from [SecondActV3].[dbo].[AspNetUserRoles4]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserRoles5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserRoles5] as select * from [SecondActV3].[dbo].[AspNetUserRoles5]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers] as select * from [SecondActV3].[dbo].[AspNetUsers]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers_Audit] as select * from [SecondActV3].[dbo].[AspNetUsers_Audit]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers_Audit2] as select * from [SecondActV3].[dbo].[AspNetUsers_Audit2]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers_Audit3] as select * from [SecondActV3].[dbo].[AspNetUsers_Audit3]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers_Audit4] as select * from [SecondActV3].[dbo].[AspNetUsers_Audit4]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers_Audit5] as select * from [SecondActV3].[dbo].[AspNetUsers_Audit5]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers2] as select * from [SecondActV3].[dbo].[AspNetUsers2]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers3] as select * from [SecondActV3].[dbo].[AspNetUsers3]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers4] as select * from [SecondActV3].[dbo].[AspNetUsers4]
GO

-- *************************************************************
-- Cascading handling of [AspNetUsers5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUsers5] as select * from [SecondActV3].[dbo].[AspNetUsers5]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserTokens] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserTokens] as select * from [SecondActV3].[dbo].[AspNetUserTokens]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserTokens2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserTokens2] as select * from [SecondActV3].[dbo].[AspNetUserTokens2]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserTokens3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserTokens3] as select * from [SecondActV3].[dbo].[AspNetUserTokens3]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserTokens4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserTokens4] as select * from [SecondActV3].[dbo].[AspNetUserTokens4]
GO

-- *************************************************************
-- Cascading handling of [AspNetUserTokens5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AspNetUserTokens5] as select * from [SecondActV3].[dbo].[AspNetUserTokens5]
GO

-- *************************************************************
-- Cascading handling of [AttributeFocusType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeFocusType] as select * from [SecondActV3].[dbo].[AttributeFocusType]
GO

-- *************************************************************
-- Cascading handling of [AttributeFocusType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeFocusType2] as select * from [SecondActV3].[dbo].[AttributeFocusType2]
GO

-- *************************************************************
-- Cascading handling of [AttributeFocusType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeFocusType3] as select * from [SecondActV3].[dbo].[AttributeFocusType3]
GO

-- *************************************************************
-- Cascading handling of [AttributeFocusType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeFocusType4] as select * from [SecondActV3].[dbo].[AttributeFocusType4]
GO

-- *************************************************************
-- Cascading handling of [AttributeFocusType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeFocusType5] as select * from [SecondActV3].[dbo].[AttributeFocusType5]
GO

-- *************************************************************
-- Cascading handling of [AttributeType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeType] as select * from [SecondActV3].[dbo].[AttributeType]
GO

-- *************************************************************
-- Cascading handling of [AttributeType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeType2] as select * from [SecondActV3].[dbo].[AttributeType2]
GO

-- *************************************************************
-- Cascading handling of [AttributeType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeType3] as select * from [SecondActV3].[dbo].[AttributeType3]
GO

-- *************************************************************
-- Cascading handling of [AttributeType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeType4] as select * from [SecondActV3].[dbo].[AttributeType4]
GO

-- *************************************************************
-- Cascading handling of [AttributeType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AttributeType5] as select * from [SecondActV3].[dbo].[AttributeType5]
GO

-- *************************************************************
-- Cascading handling of [AuspiceType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AuspiceType] as select * from [SecondActV3].[dbo].[AuspiceType]
GO

-- *************************************************************
-- Cascading handling of [AuspiceType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AuspiceType2] as select * from [SecondActV3].[dbo].[AuspiceType2]
GO

-- *************************************************************
-- Cascading handling of [AuspiceType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AuspiceType3] as select * from [SecondActV3].[dbo].[AuspiceType3]
GO

-- *************************************************************
-- Cascading handling of [AuspiceType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AuspiceType4] as select * from [SecondActV3].[dbo].[AuspiceType4]
GO

-- *************************************************************
-- Cascading handling of [AuspiceType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[AuspiceType5] as select * from [SecondActV3].[dbo].[AuspiceType5]
GO

-- *************************************************************
-- Cascading handling of [Background] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background] as select * from [SecondActV3].[dbo].[Background]
GO

-- *************************************************************
-- Cascading handling of [Background_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background_Audit] as select * from [SecondActV3].[dbo].[Background_Audit]
GO

-- *************************************************************
-- Cascading handling of [Background_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background_Audit2] as select * from [SecondActV3].[dbo].[Background_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Background_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background_Audit3] as select * from [SecondActV3].[dbo].[Background_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Background_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background_Audit4] as select * from [SecondActV3].[dbo].[Background_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Background_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background_Audit5] as select * from [SecondActV3].[dbo].[Background_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Background2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background2] as select * from [SecondActV3].[dbo].[Background2]
GO

-- *************************************************************
-- Cascading handling of [Background3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background3] as select * from [SecondActV3].[dbo].[Background3]
GO

-- *************************************************************
-- Cascading handling of [Background4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background4] as select * from [SecondActV3].[dbo].[Background4]
GO

-- *************************************************************
-- Cascading handling of [Background5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Background5] as select * from [SecondActV3].[dbo].[Background5]
GO

-- *************************************************************
-- Cascading handling of [BackgroundType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BackgroundType] as select * from [SecondActV3].[dbo].[BackgroundType]
GO

-- *************************************************************
-- Cascading handling of [BackgroundType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BackgroundType2] as select * from [SecondActV3].[dbo].[BackgroundType2]
GO

-- *************************************************************
-- Cascading handling of [BackgroundType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BackgroundType3] as select * from [SecondActV3].[dbo].[BackgroundType3]
GO

-- *************************************************************
-- Cascading handling of [BackgroundType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BackgroundType4] as select * from [SecondActV3].[dbo].[BackgroundType4]
GO

-- *************************************************************
-- Cascading handling of [BackgroundType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BackgroundType5] as select * from [SecondActV3].[dbo].[BackgroundType5]
GO

-- *************************************************************
-- Cascading handling of [BreedType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BreedType] as select * from [SecondActV3].[dbo].[BreedType]
GO

-- *************************************************************
-- Cascading handling of [BreedType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BreedType2] as select * from [SecondActV3].[dbo].[BreedType2]
GO

-- *************************************************************
-- Cascading handling of [BreedType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BreedType3] as select * from [SecondActV3].[dbo].[BreedType3]
GO

-- *************************************************************
-- Cascading handling of [BreedType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BreedType4] as select * from [SecondActV3].[dbo].[BreedType4]
GO

-- *************************************************************
-- Cascading handling of [BreedType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[BreedType5] as select * from [SecondActV3].[dbo].[BreedType5]
GO

-- *************************************************************
-- Cascading handling of [CacheName] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CacheName] as select * from [SecondActV3].[dbo].[CacheName]
GO

-- *************************************************************
-- Cascading handling of [CacheName2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CacheName2] as select * from [SecondActV3].[dbo].[CacheName2]
GO

-- *************************************************************
-- Cascading handling of [CacheName3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CacheName3] as select * from [SecondActV3].[dbo].[CacheName3]
GO

-- *************************************************************
-- Cascading handling of [CacheName4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CacheName4] as select * from [SecondActV3].[dbo].[CacheName4]
GO

-- *************************************************************
-- Cascading handling of [CacheName5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CacheName5] as select * from [SecondActV3].[dbo].[CacheName5]
GO

-- *************************************************************
-- Cascading handling of [Character] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character] as select * from [SecondActV3].[dbo].[Character]
GO

-- *************************************************************
-- Cascading handling of [Character_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character_Audit] as select * from [SecondActV3].[dbo].[Character_Audit]
GO

-- *************************************************************
-- Cascading handling of [Character_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character_Audit2] as select * from [SecondActV3].[dbo].[Character_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Character_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character_Audit3] as select * from [SecondActV3].[dbo].[Character_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Character_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character_Audit4] as select * from [SecondActV3].[dbo].[Character_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Character_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character_Audit5] as select * from [SecondActV3].[dbo].[Character_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Character2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character2] as select * from [SecondActV3].[dbo].[Character2]
GO

-- *************************************************************
-- Cascading handling of [Character3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character3] as select * from [SecondActV3].[dbo].[Character3]
GO

-- *************************************************************
-- Cascading handling of [Character4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character4] as select * from [SecondActV3].[dbo].[Character4]
GO

-- *************************************************************
-- Cascading handling of [Character5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Character5] as select * from [SecondActV3].[dbo].[Character5]
GO

-- *************************************************************
-- Cascading handling of [CharacterAudit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAudit] as select * from [SecondActV3].[dbo].[CharacterAudit]
GO

-- *************************************************************
-- Cascading handling of [CharacterAudit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAudit2] as select * from [SecondActV3].[dbo].[CharacterAudit2]
GO

-- *************************************************************
-- Cascading handling of [CharacterAudit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAudit3] as select * from [SecondActV3].[dbo].[CharacterAudit3]
GO

-- *************************************************************
-- Cascading handling of [CharacterAudit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAudit4] as select * from [SecondActV3].[dbo].[CharacterAudit4]
GO

-- *************************************************************
-- Cascading handling of [CharacterAudit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAudit5] as select * from [SecondActV3].[dbo].[CharacterAudit5]
GO

-- *************************************************************
-- Cascading handling of [CharacterAuditStatusType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAuditStatusType] as select * from [SecondActV3].[dbo].[CharacterAuditStatusType]
GO

-- *************************************************************
-- Cascading handling of [CharacterAuditStatusType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAuditStatusType2] as select * from [SecondActV3].[dbo].[CharacterAuditStatusType2]
GO

-- *************************************************************
-- Cascading handling of [CharacterAuditStatusType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAuditStatusType3] as select * from [SecondActV3].[dbo].[CharacterAuditStatusType3]
GO

-- *************************************************************
-- Cascading handling of [CharacterAuditStatusType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAuditStatusType4] as select * from [SecondActV3].[dbo].[CharacterAuditStatusType4]
GO

-- *************************************************************
-- Cascading handling of [CharacterAuditStatusType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterAuditStatusType5] as select * from [SecondActV3].[dbo].[CharacterAuditStatusType5]
GO

-- *************************************************************
-- Cascading handling of [CharacterType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterType] as select * from [SecondActV3].[dbo].[CharacterType]
GO

-- *************************************************************
-- Cascading handling of [CharacterType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterType2] as select * from [SecondActV3].[dbo].[CharacterType2]
GO

-- *************************************************************
-- Cascading handling of [CharacterType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterType3] as select * from [SecondActV3].[dbo].[CharacterType3]
GO

-- *************************************************************
-- Cascading handling of [CharacterType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterType4] as select * from [SecondActV3].[dbo].[CharacterType4]
GO

-- *************************************************************
-- Cascading handling of [CharacterType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CharacterType5] as select * from [SecondActV3].[dbo].[CharacterType5]
GO

-- *************************************************************
-- Cascading handling of [Chronicle] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle] as select * from [SecondActV3].[dbo].[Chronicle]
GO

-- *************************************************************
-- Cascading handling of [Chronicle_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle_Audit] as select * from [SecondActV3].[dbo].[Chronicle_Audit]
GO

-- *************************************************************
-- Cascading handling of [Chronicle_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle_Audit2] as select * from [SecondActV3].[dbo].[Chronicle_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Chronicle_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle_Audit3] as select * from [SecondActV3].[dbo].[Chronicle_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Chronicle_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle_Audit4] as select * from [SecondActV3].[dbo].[Chronicle_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Chronicle_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle_Audit5] as select * from [SecondActV3].[dbo].[Chronicle_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Chronicle2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle2] as select * from [SecondActV3].[dbo].[Chronicle2]
GO

-- *************************************************************
-- Cascading handling of [Chronicle3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle3] as select * from [SecondActV3].[dbo].[Chronicle3]
GO

-- *************************************************************
-- Cascading handling of [Chronicle4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle4] as select * from [SecondActV3].[dbo].[Chronicle4]
GO

-- *************************************************************
-- Cascading handling of [Chronicle5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Chronicle5] as select * from [SecondActV3].[dbo].[Chronicle5]
GO

-- *************************************************************
-- Cascading handling of [ChronicleSettingType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleSettingType] as select * from [SecondActV3].[dbo].[ChronicleSettingType]
GO

-- *************************************************************
-- Cascading handling of [ChronicleSettingType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleSettingType2] as select * from [SecondActV3].[dbo].[ChronicleSettingType2]
GO

-- *************************************************************
-- Cascading handling of [ChronicleSettingType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleSettingType3] as select * from [SecondActV3].[dbo].[ChronicleSettingType3]
GO

-- *************************************************************
-- Cascading handling of [ChronicleSettingType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleSettingType4] as select * from [SecondActV3].[dbo].[ChronicleSettingType4]
GO

-- *************************************************************
-- Cascading handling of [ChronicleSettingType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleSettingType5] as select * from [SecondActV3].[dbo].[ChronicleSettingType5]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStatusType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStatusType] as select * from [SecondActV3].[dbo].[ChronicleStatusType]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStatusType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStatusType2] as select * from [SecondActV3].[dbo].[ChronicleStatusType2]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStatusType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStatusType3] as select * from [SecondActV3].[dbo].[ChronicleStatusType3]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStatusType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStatusType4] as select * from [SecondActV3].[dbo].[ChronicleStatusType4]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStatusType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStatusType5] as select * from [SecondActV3].[dbo].[ChronicleStatusType5]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller] as select * from [SecondActV3].[dbo].[ChronicleStoryteller]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller_Audit] as select * from [SecondActV3].[dbo].[ChronicleStoryteller_Audit]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller_Audit2] as select * from [SecondActV3].[dbo].[ChronicleStoryteller_Audit2]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller_Audit3] as select * from [SecondActV3].[dbo].[ChronicleStoryteller_Audit3]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller_Audit4] as select * from [SecondActV3].[dbo].[ChronicleStoryteller_Audit4]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller_Audit5] as select * from [SecondActV3].[dbo].[ChronicleStoryteller_Audit5]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller2] as select * from [SecondActV3].[dbo].[ChronicleStoryteller2]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller3] as select * from [SecondActV3].[dbo].[ChronicleStoryteller3]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller4] as select * from [SecondActV3].[dbo].[ChronicleStoryteller4]
GO

-- *************************************************************
-- Cascading handling of [ChronicleStoryteller5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleStoryteller5] as select * from [SecondActV3].[dbo].[ChronicleStoryteller5]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit] as select * from [SecondActV3].[dbo].[ChronicleVisit]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit_Audit] as select * from [SecondActV3].[dbo].[ChronicleVisit_Audit]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit_Audit2] as select * from [SecondActV3].[dbo].[ChronicleVisit_Audit2]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit_Audit3] as select * from [SecondActV3].[dbo].[ChronicleVisit_Audit3]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit_Audit4] as select * from [SecondActV3].[dbo].[ChronicleVisit_Audit4]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit_Audit5] as select * from [SecondActV3].[dbo].[ChronicleVisit_Audit5]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit2] as select * from [SecondActV3].[dbo].[ChronicleVisit2]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit3] as select * from [SecondActV3].[dbo].[ChronicleVisit3]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit4] as select * from [SecondActV3].[dbo].[ChronicleVisit4]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisit5] as select * from [SecondActV3].[dbo].[ChronicleVisit5]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisitStatusType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisitStatusType] as select * from [SecondActV3].[dbo].[ChronicleVisitStatusType]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisitStatusType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisitStatusType2] as select * from [SecondActV3].[dbo].[ChronicleVisitStatusType2]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisitStatusType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisitStatusType3] as select * from [SecondActV3].[dbo].[ChronicleVisitStatusType3]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisitStatusType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisitStatusType4] as select * from [SecondActV3].[dbo].[ChronicleVisitStatusType4]
GO

-- *************************************************************
-- Cascading handling of [ChronicleVisitStatusType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ChronicleVisitStatusType5] as select * from [SecondActV3].[dbo].[ChronicleVisitStatusType5]
GO

-- *************************************************************
-- Cascading handling of [ClanGroupType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanGroupType] as select * from [SecondActV3].[dbo].[ClanGroupType]
GO

-- *************************************************************
-- Cascading handling of [ClanGroupType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanGroupType2] as select * from [SecondActV3].[dbo].[ClanGroupType2]
GO

-- *************************************************************
-- Cascading handling of [ClanGroupType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanGroupType3] as select * from [SecondActV3].[dbo].[ClanGroupType3]
GO

-- *************************************************************
-- Cascading handling of [ClanGroupType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanGroupType4] as select * from [SecondActV3].[dbo].[ClanGroupType4]
GO

-- *************************************************************
-- Cascading handling of [ClanGroupType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanGroupType5] as select * from [SecondActV3].[dbo].[ClanGroupType5]
GO

-- *************************************************************
-- Cascading handling of [ClanType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanType] as select * from [SecondActV3].[dbo].[ClanType]
GO

-- *************************************************************
-- Cascading handling of [ClanType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanType2] as select * from [SecondActV3].[dbo].[ClanType2]
GO

-- *************************************************************
-- Cascading handling of [ClanType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanType3] as select * from [SecondActV3].[dbo].[ClanType3]
GO

-- *************************************************************
-- Cascading handling of [ClanType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanType4] as select * from [SecondActV3].[dbo].[ClanType4]
GO

-- *************************************************************
-- Cascading handling of [ClanType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[ClanType5] as select * from [SecondActV3].[dbo].[ClanType5]
GO

-- *************************************************************
-- Cascading handling of [CourtType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CourtType] as select * from [SecondActV3].[dbo].[CourtType]
GO

-- *************************************************************
-- Cascading handling of [CourtType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CourtType2] as select * from [SecondActV3].[dbo].[CourtType2]
GO

-- *************************************************************
-- Cascading handling of [CourtType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CourtType3] as select * from [SecondActV3].[dbo].[CourtType3]
GO

-- *************************************************************
-- Cascading handling of [CourtType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CourtType4] as select * from [SecondActV3].[dbo].[CourtType4]
GO

-- *************************************************************
-- Cascading handling of [CourtType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[CourtType5] as select * from [SecondActV3].[dbo].[CourtType5]
GO

-- *************************************************************
-- Cascading handling of [DateStartType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DateStartType] as select * from [SecondActV3].[dbo].[DateStartType]
GO

-- *************************************************************
-- Cascading handling of [DateStartType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DateStartType2] as select * from [SecondActV3].[dbo].[DateStartType2]
GO

-- *************************************************************
-- Cascading handling of [DateStartType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DateStartType3] as select * from [SecondActV3].[dbo].[DateStartType3]
GO

-- *************************************************************
-- Cascading handling of [DateStartType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DateStartType4] as select * from [SecondActV3].[dbo].[DateStartType4]
GO

-- *************************************************************
-- Cascading handling of [DateStartType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DateStartType5] as select * from [SecondActV3].[dbo].[DateStartType5]
GO

-- *************************************************************
-- Cascading handling of [Discipline] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline] as select * from [SecondActV3].[dbo].[Discipline]
GO

-- *************************************************************
-- Cascading handling of [Discipline_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline_Audit] as select * from [SecondActV3].[dbo].[Discipline_Audit]
GO

-- *************************************************************
-- Cascading handling of [Discipline_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline_Audit2] as select * from [SecondActV3].[dbo].[Discipline_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Discipline_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline_Audit3] as select * from [SecondActV3].[dbo].[Discipline_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Discipline_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline_Audit4] as select * from [SecondActV3].[dbo].[Discipline_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Discipline_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline_Audit5] as select * from [SecondActV3].[dbo].[Discipline_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Discipline2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline2] as select * from [SecondActV3].[dbo].[Discipline2]
GO

-- *************************************************************
-- Cascading handling of [Discipline3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline3] as select * from [SecondActV3].[dbo].[Discipline3]
GO

-- *************************************************************
-- Cascading handling of [Discipline4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline4] as select * from [SecondActV3].[dbo].[Discipline4]
GO

-- *************************************************************
-- Cascading handling of [Discipline5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Discipline5] as select * from [SecondActV3].[dbo].[Discipline5]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDefault] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDefault] as select * from [SecondActV3].[dbo].[DisciplineDefault]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDefault2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDefault2] as select * from [SecondActV3].[dbo].[DisciplineDefault2]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDefault3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDefault3] as select * from [SecondActV3].[dbo].[DisciplineDefault3]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDefault4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDefault4] as select * from [SecondActV3].[dbo].[DisciplineDefault4]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDefault5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDefault5] as select * from [SecondActV3].[dbo].[DisciplineDefault5]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDetail] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDetail] as select * from [SecondActV3].[dbo].[DisciplineDetail]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDetail2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDetail2] as select * from [SecondActV3].[dbo].[DisciplineDetail2]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDetail3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDetail3] as select * from [SecondActV3].[dbo].[DisciplineDetail3]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDetail4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDetail4] as select * from [SecondActV3].[dbo].[DisciplineDetail4]
GO

-- *************************************************************
-- Cascading handling of [DisciplineDetail5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineDetail5] as select * from [SecondActV3].[dbo].[DisciplineDetail5]
GO

-- *************************************************************
-- Cascading handling of [DisciplineGroupType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineGroupType] as select * from [SecondActV3].[dbo].[DisciplineGroupType]
GO

-- *************************************************************
-- Cascading handling of [DisciplineGroupType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineGroupType2] as select * from [SecondActV3].[dbo].[DisciplineGroupType2]
GO

-- *************************************************************
-- Cascading handling of [DisciplineGroupType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineGroupType3] as select * from [SecondActV3].[dbo].[DisciplineGroupType3]
GO

-- *************************************************************
-- Cascading handling of [DisciplineGroupType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineGroupType4] as select * from [SecondActV3].[dbo].[DisciplineGroupType4]
GO

-- *************************************************************
-- Cascading handling of [DisciplineGroupType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineGroupType5] as select * from [SecondActV3].[dbo].[DisciplineGroupType5]
GO

-- *************************************************************
-- Cascading handling of [DisciplineType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineType] as select * from [SecondActV3].[dbo].[DisciplineType]
GO

-- *************************************************************
-- Cascading handling of [DisciplineType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineType2] as select * from [SecondActV3].[dbo].[DisciplineType2]
GO

-- *************************************************************
-- Cascading handling of [DisciplineType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineType3] as select * from [SecondActV3].[dbo].[DisciplineType3]
GO

-- *************************************************************
-- Cascading handling of [DisciplineType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineType4] as select * from [SecondActV3].[dbo].[DisciplineType4]
GO

-- *************************************************************
-- Cascading handling of [DisciplineType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DisciplineType5] as select * from [SecondActV3].[dbo].[DisciplineType5]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction] as select * from [SecondActV3].[dbo].[DowntimeAction]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction_Audit] as select * from [SecondActV3].[dbo].[DowntimeAction_Audit]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction_Audit2] as select * from [SecondActV3].[dbo].[DowntimeAction_Audit2]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction_Audit3] as select * from [SecondActV3].[dbo].[DowntimeAction_Audit3]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction_Audit4] as select * from [SecondActV3].[dbo].[DowntimeAction_Audit4]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction_Audit5] as select * from [SecondActV3].[dbo].[DowntimeAction_Audit5]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction2] as select * from [SecondActV3].[dbo].[DowntimeAction2]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction3] as select * from [SecondActV3].[dbo].[DowntimeAction3]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction4] as select * from [SecondActV3].[dbo].[DowntimeAction4]
GO

-- *************************************************************
-- Cascading handling of [DowntimeAction5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[DowntimeAction5] as select * from [SecondActV3].[dbo].[DowntimeAction5]
GO

-- *************************************************************
-- Cascading handling of [GameDate] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate] as select * from [SecondActV3].[dbo].[GameDate]
GO

-- *************************************************************
-- Cascading handling of [GameDate_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate_Audit] as select * from [SecondActV3].[dbo].[GameDate_Audit]
GO

-- *************************************************************
-- Cascading handling of [GameDate_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate_Audit2] as select * from [SecondActV3].[dbo].[GameDate_Audit2]
GO

-- *************************************************************
-- Cascading handling of [GameDate_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate_Audit3] as select * from [SecondActV3].[dbo].[GameDate_Audit3]
GO

-- *************************************************************
-- Cascading handling of [GameDate_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate_Audit4] as select * from [SecondActV3].[dbo].[GameDate_Audit4]
GO

-- *************************************************************
-- Cascading handling of [GameDate_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate_Audit5] as select * from [SecondActV3].[dbo].[GameDate_Audit5]
GO

-- *************************************************************
-- Cascading handling of [GameDate2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate2] as select * from [SecondActV3].[dbo].[GameDate2]
GO

-- *************************************************************
-- Cascading handling of [GameDate3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate3] as select * from [SecondActV3].[dbo].[GameDate3]
GO

-- *************************************************************
-- Cascading handling of [GameDate4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate4] as select * from [SecondActV3].[dbo].[GameDate4]
GO

-- *************************************************************
-- Cascading handling of [GameDate5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameDate5] as select * from [SecondActV3].[dbo].[GameDate5]
GO

-- *************************************************************
-- Cascading handling of [GameLocation] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation] as select * from [SecondActV3].[dbo].[GameLocation]
GO

-- *************************************************************
-- Cascading handling of [GameLocation_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation_Audit] as select * from [SecondActV3].[dbo].[GameLocation_Audit]
GO

-- *************************************************************
-- Cascading handling of [GameLocation_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation_Audit2] as select * from [SecondActV3].[dbo].[GameLocation_Audit2]
GO

-- *************************************************************
-- Cascading handling of [GameLocation_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation_Audit3] as select * from [SecondActV3].[dbo].[GameLocation_Audit3]
GO

-- *************************************************************
-- Cascading handling of [GameLocation_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation_Audit4] as select * from [SecondActV3].[dbo].[GameLocation_Audit4]
GO

-- *************************************************************
-- Cascading handling of [GameLocation_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation_Audit5] as select * from [SecondActV3].[dbo].[GameLocation_Audit5]
GO

-- *************************************************************
-- Cascading handling of [GameLocation2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation2] as select * from [SecondActV3].[dbo].[GameLocation2]
GO

-- *************************************************************
-- Cascading handling of [GameLocation3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation3] as select * from [SecondActV3].[dbo].[GameLocation3]
GO

-- *************************************************************
-- Cascading handling of [GameLocation4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation4] as select * from [SecondActV3].[dbo].[GameLocation4]
GO

-- *************************************************************
-- Cascading handling of [GameLocation5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameLocation5] as select * from [SecondActV3].[dbo].[GameLocation5]
GO

-- *************************************************************
-- Cascading handling of [GameRumor] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor] as select * from [SecondActV3].[dbo].[GameRumor]
GO

-- *************************************************************
-- Cascading handling of [GameRumor_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor_Audit] as select * from [SecondActV3].[dbo].[GameRumor_Audit]
GO

-- *************************************************************
-- Cascading handling of [GameRumor_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor_Audit2] as select * from [SecondActV3].[dbo].[GameRumor_Audit2]
GO

-- *************************************************************
-- Cascading handling of [GameRumor_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor_Audit3] as select * from [SecondActV3].[dbo].[GameRumor_Audit3]
GO

-- *************************************************************
-- Cascading handling of [GameRumor_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor_Audit4] as select * from [SecondActV3].[dbo].[GameRumor_Audit4]
GO

-- *************************************************************
-- Cascading handling of [GameRumor_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor_Audit5] as select * from [SecondActV3].[dbo].[GameRumor_Audit5]
GO

-- *************************************************************
-- Cascading handling of [GameRumor2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor2] as select * from [SecondActV3].[dbo].[GameRumor2]
GO

-- *************************************************************
-- Cascading handling of [GameRumor3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor3] as select * from [SecondActV3].[dbo].[GameRumor3]
GO

-- *************************************************************
-- Cascading handling of [GameRumor4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor4] as select * from [SecondActV3].[dbo].[GameRumor4]
GO

-- *************************************************************
-- Cascading handling of [GameRumor5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GameRumor5] as select * from [SecondActV3].[dbo].[GameRumor5]
GO

-- *************************************************************
-- Cascading handling of [GenerationType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GenerationType] as select * from [SecondActV3].[dbo].[GenerationType]
GO

-- *************************************************************
-- Cascading handling of [GenerationType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GenerationType2] as select * from [SecondActV3].[dbo].[GenerationType2]
GO

-- *************************************************************
-- Cascading handling of [GenerationType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GenerationType3] as select * from [SecondActV3].[dbo].[GenerationType3]
GO

-- *************************************************************
-- Cascading handling of [GenerationType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GenerationType4] as select * from [SecondActV3].[dbo].[GenerationType4]
GO

-- *************************************************************
-- Cascading handling of [GenerationType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GenerationType5] as select * from [SecondActV3].[dbo].[GenerationType5]
GO

-- *************************************************************
-- Cascading handling of [Gift] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift] as select * from [SecondActV3].[dbo].[Gift]
GO

-- *************************************************************
-- Cascading handling of [Gift_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift_Audit] as select * from [SecondActV3].[dbo].[Gift_Audit]
GO

-- *************************************************************
-- Cascading handling of [Gift_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift_Audit2] as select * from [SecondActV3].[dbo].[Gift_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Gift_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift_Audit3] as select * from [SecondActV3].[dbo].[Gift_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Gift_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift_Audit4] as select * from [SecondActV3].[dbo].[Gift_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Gift_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift_Audit5] as select * from [SecondActV3].[dbo].[Gift_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Gift2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift2] as select * from [SecondActV3].[dbo].[Gift2]
GO

-- *************************************************************
-- Cascading handling of [Gift3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift3] as select * from [SecondActV3].[dbo].[Gift3]
GO

-- *************************************************************
-- Cascading handling of [Gift4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift4] as select * from [SecondActV3].[dbo].[Gift4]
GO

-- *************************************************************
-- Cascading handling of [Gift5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Gift5] as select * from [SecondActV3].[dbo].[Gift5]
GO

-- *************************************************************
-- Cascading handling of [GiftType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GiftType] as select * from [SecondActV3].[dbo].[GiftType]
GO

-- *************************************************************
-- Cascading handling of [GiftType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GiftType2] as select * from [SecondActV3].[dbo].[GiftType2]
GO

-- *************************************************************
-- Cascading handling of [GiftType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GiftType3] as select * from [SecondActV3].[dbo].[GiftType3]
GO

-- *************************************************************
-- Cascading handling of [GiftType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GiftType4] as select * from [SecondActV3].[dbo].[GiftType4]
GO

-- *************************************************************
-- Cascading handling of [GiftType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[GiftType5] as select * from [SecondActV3].[dbo].[GiftType5]
GO

-- *************************************************************
-- Cascading handling of [KithType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[KithType] as select * from [SecondActV3].[dbo].[KithType]
GO

-- *************************************************************
-- Cascading handling of [KithType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[KithType2] as select * from [SecondActV3].[dbo].[KithType2]
GO

-- *************************************************************
-- Cascading handling of [KithType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[KithType3] as select * from [SecondActV3].[dbo].[KithType3]
GO

-- *************************************************************
-- Cascading handling of [KithType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[KithType4] as select * from [SecondActV3].[dbo].[KithType4]
GO

-- *************************************************************
-- Cascading handling of [KithType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[KithType5] as select * from [SecondActV3].[dbo].[KithType5]
GO

-- *************************************************************
-- Cascading handling of [Link] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link] as select * from [SecondActV3].[dbo].[Link]
GO

-- *************************************************************
-- Cascading handling of [Link_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link_Audit] as select * from [SecondActV3].[dbo].[Link_Audit]
GO

-- *************************************************************
-- Cascading handling of [Link_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link_Audit2] as select * from [SecondActV3].[dbo].[Link_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Link_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link_Audit3] as select * from [SecondActV3].[dbo].[Link_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Link_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link_Audit4] as select * from [SecondActV3].[dbo].[Link_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Link_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link_Audit5] as select * from [SecondActV3].[dbo].[Link_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Link2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link2] as select * from [SecondActV3].[dbo].[Link2]
GO

-- *************************************************************
-- Cascading handling of [Link3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link3] as select * from [SecondActV3].[dbo].[Link3]
GO

-- *************************************************************
-- Cascading handling of [Link4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link4] as select * from [SecondActV3].[dbo].[Link4]
GO

-- *************************************************************
-- Cascading handling of [Link5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Link5] as select * from [SecondActV3].[dbo].[Link5]
GO

-- *************************************************************
-- Cascading handling of [LinkType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LinkType] as select * from [SecondActV3].[dbo].[LinkType]
GO

-- *************************************************************
-- Cascading handling of [LinkType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LinkType2] as select * from [SecondActV3].[dbo].[LinkType2]
GO

-- *************************************************************
-- Cascading handling of [LinkType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LinkType3] as select * from [SecondActV3].[dbo].[LinkType3]
GO

-- *************************************************************
-- Cascading handling of [LinkType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LinkType4] as select * from [SecondActV3].[dbo].[LinkType4]
GO

-- *************************************************************
-- Cascading handling of [LinkType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LinkType5] as select * from [SecondActV3].[dbo].[LinkType5]
GO

-- *************************************************************
-- Cascading handling of [LocationStateType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LocationStateType] as select * from [SecondActV3].[dbo].[LocationStateType]
GO

-- *************************************************************
-- Cascading handling of [LocationStateType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LocationStateType2] as select * from [SecondActV3].[dbo].[LocationStateType2]
GO

-- *************************************************************
-- Cascading handling of [LocationStateType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LocationStateType3] as select * from [SecondActV3].[dbo].[LocationStateType3]
GO

-- *************************************************************
-- Cascading handling of [LocationStateType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LocationStateType4] as select * from [SecondActV3].[dbo].[LocationStateType4]
GO

-- *************************************************************
-- Cascading handling of [LocationStateType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[LocationStateType5] as select * from [SecondActV3].[dbo].[LocationStateType5]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw] as select * from [SecondActV3].[dbo].[MeritFlaw]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw_Audit] as select * from [SecondActV3].[dbo].[MeritFlaw_Audit]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw_Audit2] as select * from [SecondActV3].[dbo].[MeritFlaw_Audit2]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw_Audit3] as select * from [SecondActV3].[dbo].[MeritFlaw_Audit3]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw_Audit4] as select * from [SecondActV3].[dbo].[MeritFlaw_Audit4]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw_Audit5] as select * from [SecondActV3].[dbo].[MeritFlaw_Audit5]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw2] as select * from [SecondActV3].[dbo].[MeritFlaw2]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw3] as select * from [SecondActV3].[dbo].[MeritFlaw3]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw4] as select * from [SecondActV3].[dbo].[MeritFlaw4]
GO

-- *************************************************************
-- Cascading handling of [MeritFlaw5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlaw5] as select * from [SecondActV3].[dbo].[MeritFlaw5]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawGroupType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawGroupType] as select * from [SecondActV3].[dbo].[MeritFlawGroupType]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawGroupType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawGroupType2] as select * from [SecondActV3].[dbo].[MeritFlawGroupType2]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawGroupType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawGroupType3] as select * from [SecondActV3].[dbo].[MeritFlawGroupType3]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawGroupType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawGroupType4] as select * from [SecondActV3].[dbo].[MeritFlawGroupType4]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawGroupType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawGroupType5] as select * from [SecondActV3].[dbo].[MeritFlawGroupType5]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawType] as select * from [SecondActV3].[dbo].[MeritFlawType]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawType2] as select * from [SecondActV3].[dbo].[MeritFlawType2]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawType3] as select * from [SecondActV3].[dbo].[MeritFlawType3]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawType4] as select * from [SecondActV3].[dbo].[MeritFlawType4]
GO

-- *************************************************************
-- Cascading handling of [MeritFlawType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[MeritFlawType5] as select * from [SecondActV3].[dbo].[MeritFlawType5]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip] as select * from [SecondActV3].[dbo].[PlayerPip]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip_Audit] as select * from [SecondActV3].[dbo].[PlayerPip_Audit]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip_Audit2] as select * from [SecondActV3].[dbo].[PlayerPip_Audit2]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip_Audit3] as select * from [SecondActV3].[dbo].[PlayerPip_Audit3]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip_Audit4] as select * from [SecondActV3].[dbo].[PlayerPip_Audit4]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip_Audit5] as select * from [SecondActV3].[dbo].[PlayerPip_Audit5]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip2] as select * from [SecondActV3].[dbo].[PlayerPip2]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip3] as select * from [SecondActV3].[dbo].[PlayerPip3]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip4] as select * from [SecondActV3].[dbo].[PlayerPip4]
GO

-- *************************************************************
-- Cascading handling of [PlayerPip5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerPip5] as select * from [SecondActV3].[dbo].[PlayerPip5]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp] as select * from [SecondActV3].[dbo].[PlayerXp]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp_Audit] as select * from [SecondActV3].[dbo].[PlayerXp_Audit]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp_Audit2] as select * from [SecondActV3].[dbo].[PlayerXp_Audit2]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp_Audit3] as select * from [SecondActV3].[dbo].[PlayerXp_Audit3]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp_Audit4] as select * from [SecondActV3].[dbo].[PlayerXp_Audit4]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp_Audit5] as select * from [SecondActV3].[dbo].[PlayerXp_Audit5]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp2] as select * from [SecondActV3].[dbo].[PlayerXp2]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp3] as select * from [SecondActV3].[dbo].[PlayerXp3]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp4] as select * from [SecondActV3].[dbo].[PlayerXp4]
GO

-- *************************************************************
-- Cascading handling of [PlayerXp5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[PlayerXp5] as select * from [SecondActV3].[dbo].[PlayerXp5]
GO

-- *************************************************************
-- Cascading handling of [Realm] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm] as select * from [SecondActV3].[dbo].[Realm]
GO

-- *************************************************************
-- Cascading handling of [Realm_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm_Audit] as select * from [SecondActV3].[dbo].[Realm_Audit]
GO

-- *************************************************************
-- Cascading handling of [Realm_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm_Audit2] as select * from [SecondActV3].[dbo].[Realm_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Realm_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm_Audit3] as select * from [SecondActV3].[dbo].[Realm_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Realm_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm_Audit4] as select * from [SecondActV3].[dbo].[Realm_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Realm_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm_Audit5] as select * from [SecondActV3].[dbo].[Realm_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Realm2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm2] as select * from [SecondActV3].[dbo].[Realm2]
GO

-- *************************************************************
-- Cascading handling of [Realm3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm3] as select * from [SecondActV3].[dbo].[Realm3]
GO

-- *************************************************************
-- Cascading handling of [Realm4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm4] as select * from [SecondActV3].[dbo].[Realm4]
GO

-- *************************************************************
-- Cascading handling of [Realm5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Realm5] as select * from [SecondActV3].[dbo].[Realm5]
GO

-- *************************************************************
-- Cascading handling of [RealmType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RealmType] as select * from [SecondActV3].[dbo].[RealmType]
GO

-- *************************************************************
-- Cascading handling of [RealmType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RealmType2] as select * from [SecondActV3].[dbo].[RealmType2]
GO

-- *************************************************************
-- Cascading handling of [RealmType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RealmType3] as select * from [SecondActV3].[dbo].[RealmType3]
GO

-- *************************************************************
-- Cascading handling of [RealmType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RealmType4] as select * from [SecondActV3].[dbo].[RealmType4]
GO

-- *************************************************************
-- Cascading handling of [RealmType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RealmType5] as select * from [SecondActV3].[dbo].[RealmType5]
GO

-- *************************************************************
-- Cascading handling of [Ritual] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual] as select * from [SecondActV3].[dbo].[Ritual]
GO

-- *************************************************************
-- Cascading handling of [Ritual_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual_Audit] as select * from [SecondActV3].[dbo].[Ritual_Audit]
GO

-- *************************************************************
-- Cascading handling of [Ritual_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual_Audit2] as select * from [SecondActV3].[dbo].[Ritual_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Ritual_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual_Audit3] as select * from [SecondActV3].[dbo].[Ritual_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Ritual_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual_Audit4] as select * from [SecondActV3].[dbo].[Ritual_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Ritual_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual_Audit5] as select * from [SecondActV3].[dbo].[Ritual_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Ritual2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual2] as select * from [SecondActV3].[dbo].[Ritual2]
GO

-- *************************************************************
-- Cascading handling of [Ritual3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual3] as select * from [SecondActV3].[dbo].[Ritual3]
GO

-- *************************************************************
-- Cascading handling of [Ritual4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual4] as select * from [SecondActV3].[dbo].[Ritual4]
GO

-- *************************************************************
-- Cascading handling of [Ritual5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Ritual5] as select * from [SecondActV3].[dbo].[Ritual5]
GO

-- *************************************************************
-- Cascading handling of [RitualGroupType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualGroupType] as select * from [SecondActV3].[dbo].[RitualGroupType]
GO

-- *************************************************************
-- Cascading handling of [RitualGroupType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualGroupType2] as select * from [SecondActV3].[dbo].[RitualGroupType2]
GO

-- *************************************************************
-- Cascading handling of [RitualGroupType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualGroupType3] as select * from [SecondActV3].[dbo].[RitualGroupType3]
GO

-- *************************************************************
-- Cascading handling of [RitualGroupType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualGroupType4] as select * from [SecondActV3].[dbo].[RitualGroupType4]
GO

-- *************************************************************
-- Cascading handling of [RitualGroupType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualGroupType5] as select * from [SecondActV3].[dbo].[RitualGroupType5]
GO

-- *************************************************************
-- Cascading handling of [RitualType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualType] as select * from [SecondActV3].[dbo].[RitualType]
GO

-- *************************************************************
-- Cascading handling of [RitualType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualType2] as select * from [SecondActV3].[dbo].[RitualType2]
GO

-- *************************************************************
-- Cascading handling of [RitualType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualType3] as select * from [SecondActV3].[dbo].[RitualType3]
GO

-- *************************************************************
-- Cascading handling of [RitualType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualType4] as select * from [SecondActV3].[dbo].[RitualType4]
GO

-- *************************************************************
-- Cascading handling of [RitualType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[RitualType5] as select * from [SecondActV3].[dbo].[RitualType5]
GO

-- *************************************************************
-- Cascading handling of [SectType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SectType] as select * from [SecondActV3].[dbo].[SectType]
GO

-- *************************************************************
-- Cascading handling of [SectType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SectType2] as select * from [SecondActV3].[dbo].[SectType2]
GO

-- *************************************************************
-- Cascading handling of [SectType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SectType3] as select * from [SecondActV3].[dbo].[SectType3]
GO

-- *************************************************************
-- Cascading handling of [SectType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SectType4] as select * from [SecondActV3].[dbo].[SectType4]
GO

-- *************************************************************
-- Cascading handling of [SectType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SectType5] as select * from [SecondActV3].[dbo].[SectType5]
GO

-- *************************************************************
-- Cascading handling of [Skill] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill] as select * from [SecondActV3].[dbo].[Skill]
GO

-- *************************************************************
-- Cascading handling of [Skill_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill_Audit] as select * from [SecondActV3].[dbo].[Skill_Audit]
GO

-- *************************************************************
-- Cascading handling of [Skill_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill_Audit2] as select * from [SecondActV3].[dbo].[Skill_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Skill_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill_Audit3] as select * from [SecondActV3].[dbo].[Skill_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Skill_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill_Audit4] as select * from [SecondActV3].[dbo].[Skill_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Skill_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill_Audit5] as select * from [SecondActV3].[dbo].[Skill_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Skill2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill2] as select * from [SecondActV3].[dbo].[Skill2]
GO

-- *************************************************************
-- Cascading handling of [Skill3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill3] as select * from [SecondActV3].[dbo].[Skill3]
GO

-- *************************************************************
-- Cascading handling of [Skill4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill4] as select * from [SecondActV3].[dbo].[Skill4]
GO

-- *************************************************************
-- Cascading handling of [Skill5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Skill5] as select * from [SecondActV3].[dbo].[Skill5]
GO

-- *************************************************************
-- Cascading handling of [SkillType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SkillType] as select * from [SecondActV3].[dbo].[SkillType]
GO

-- *************************************************************
-- Cascading handling of [SkillType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SkillType2] as select * from [SecondActV3].[dbo].[SkillType2]
GO

-- *************************************************************
-- Cascading handling of [SkillType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SkillType3] as select * from [SecondActV3].[dbo].[SkillType3]
GO

-- *************************************************************
-- Cascading handling of [SkillType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SkillType4] as select * from [SecondActV3].[dbo].[SkillType4]
GO

-- *************************************************************
-- Cascading handling of [SkillType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SkillType5] as select * from [SecondActV3].[dbo].[SkillType5]
GO

-- *************************************************************
-- Cascading handling of [SqlOnAirTime] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SqlOnAirTime] as select * from [SecondActV3].[dbo].[SqlOnAirTime]
GO

-- *************************************************************
-- Cascading handling of [SqlOnAirTime2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SqlOnAirTime2] as select * from [SecondActV3].[dbo].[SqlOnAirTime2]
GO

-- *************************************************************
-- Cascading handling of [SqlOnAirTime3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SqlOnAirTime3] as select * from [SecondActV3].[dbo].[SqlOnAirTime3]
GO

-- *************************************************************
-- Cascading handling of [SqlOnAirTime4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SqlOnAirTime4] as select * from [SecondActV3].[dbo].[SqlOnAirTime4]
GO

-- *************************************************************
-- Cascading handling of [SqlOnAirTime5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[SqlOnAirTime5] as select * from [SecondActV3].[dbo].[SqlOnAirTime5]
GO

-- *************************************************************
-- Cascading handling of [StorytellerType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[StorytellerType] as select * from [SecondActV3].[dbo].[StorytellerType]
GO

-- *************************************************************
-- Cascading handling of [StorytellerType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[StorytellerType2] as select * from [SecondActV3].[dbo].[StorytellerType2]
GO

-- *************************************************************
-- Cascading handling of [StorytellerType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[StorytellerType3] as select * from [SecondActV3].[dbo].[StorytellerType3]
GO

-- *************************************************************
-- Cascading handling of [StorytellerType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[StorytellerType4] as select * from [SecondActV3].[dbo].[StorytellerType4]
GO

-- *************************************************************
-- Cascading handling of [StorytellerType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[StorytellerType5] as select * from [SecondActV3].[dbo].[StorytellerType5]
GO

-- *************************************************************
-- Cascading handling of [Technique] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique] as select * from [SecondActV3].[dbo].[Technique]
GO

-- *************************************************************
-- Cascading handling of [Technique_Audit] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique_Audit] as select * from [SecondActV3].[dbo].[Technique_Audit]
GO

-- *************************************************************
-- Cascading handling of [Technique_Audit2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique_Audit2] as select * from [SecondActV3].[dbo].[Technique_Audit2]
GO

-- *************************************************************
-- Cascading handling of [Technique_Audit3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique_Audit3] as select * from [SecondActV3].[dbo].[Technique_Audit3]
GO

-- *************************************************************
-- Cascading handling of [Technique_Audit4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique_Audit4] as select * from [SecondActV3].[dbo].[Technique_Audit4]
GO

-- *************************************************************
-- Cascading handling of [Technique_Audit5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique_Audit5] as select * from [SecondActV3].[dbo].[Technique_Audit5]
GO

-- *************************************************************
-- Cascading handling of [Technique2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique2] as select * from [SecondActV3].[dbo].[Technique2]
GO

-- *************************************************************
-- Cascading handling of [Technique3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique3] as select * from [SecondActV3].[dbo].[Technique3]
GO

-- *************************************************************
-- Cascading handling of [Technique4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique4] as select * from [SecondActV3].[dbo].[Technique4]
GO

-- *************************************************************
-- Cascading handling of [Technique5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[Technique5] as select * from [SecondActV3].[dbo].[Technique5]
GO

-- *************************************************************
-- Cascading handling of [TechniqueType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TechniqueType] as select * from [SecondActV3].[dbo].[TechniqueType]
GO

-- *************************************************************
-- Cascading handling of [TechniqueType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TechniqueType2] as select * from [SecondActV3].[dbo].[TechniqueType2]
GO

-- *************************************************************
-- Cascading handling of [TechniqueType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TechniqueType3] as select * from [SecondActV3].[dbo].[TechniqueType3]
GO

-- *************************************************************
-- Cascading handling of [TechniqueType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TechniqueType4] as select * from [SecondActV3].[dbo].[TechniqueType4]
GO

-- *************************************************************
-- Cascading handling of [TechniqueType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TechniqueType5] as select * from [SecondActV3].[dbo].[TechniqueType5]
GO

-- *************************************************************
-- Cascading handling of [TribeType] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TribeType] as select * from [SecondActV3].[dbo].[TribeType]
GO

-- *************************************************************
-- Cascading handling of [TribeType2] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TribeType2] as select * from [SecondActV3].[dbo].[TribeType2]
GO

-- *************************************************************
-- Cascading handling of [TribeType3] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TribeType3] as select * from [SecondActV3].[dbo].[TribeType3]
GO

-- *************************************************************
-- Cascading handling of [TribeType4] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TribeType4] as select * from [SecondActV3].[dbo].[TribeType4]
GO

-- *************************************************************
-- Cascading handling of [TribeType5] table.
-- *************************************************************
CREATE OR ALTER View [dbo].[TribeType5] as select * from [SecondActV3].[dbo].[TribeType5]
GO


  



CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfUpdateArchetypeType
    ON [dbo].[ArchetypeType]
    INSTEAD OF UPDATE NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM Inserted

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        
        UPDATE [ArchetypeType] SET
        
        [IsVisible] = (select [IsVisible] from INSERTED where [Id] = @UID)
        
        ,[Name] = (select [Name] from INSERTED where [Id] = @UID)
        
        ,[Ordered] = (select [Ordered] from INSERTED where [Id] = @UID)
        
        WHERE [Id] = @UID
        
  
        EXEC sp_SQLOnAir_SyncArchetypeType @ID = @UID
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;
    DECLARE @i int;
    
  
    EXEC sp_SQLOnAir_SyncTime;
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    ROLLBACK TRAN
   
   	DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO

CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfInsertArchetypeType
    ON [dbo].[ArchetypeType]
    INSTEAD OF INSERT NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    SELECT * INTO [#tempArchetypeType] FROM Inserted
    UPDATE [#tempArchetypeType] SET [Id] = NEWID() WHERE [Id] IS NULL
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM [#tempArchetypeType]

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        INSERT INTO [ArchetypeType] ([Id],[IsVisible],[Name],[Ordered])
        SELECT [Id],[IsVisible],[Name],[Ordered] from [#tempArchetypeType] where [Id] = @UID
    
        EXEC sp_SQLOnAir_SyncArchetypeType @ID = @UID
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;
    EXEC sp_SQLOnAir_SyncTime;
    
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    
    DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO

CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfDeleteArchetypeType
    ON [dbo].[ArchetypeType]
    INSTEAD OF DELETE NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM Deleted

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        
  
        
  
        DELETE FROM [SecondActV3].[dbo].[ArchetypeType] WHERE Id = @UID
    
        
  
        
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;

    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    
    DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO




CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfUpdateBackground
    ON [dbo].[Background]
    INSTEAD OF UPDATE NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM Inserted

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        
        UPDATE [Background] SET
        
        [BackgroundTypeId] = (select [BackgroundTypeId] from INSERTED where [Id] = @UID)
        
        ,[CharacterId] = (select [CharacterId] from INSERTED where [Id] = @UID)
        
        ,[IsVisible] = (select [IsVisible] from INSERTED where [Id] = @UID)
        
        ,[Level] = (select [Level] from INSERTED where [Id] = @UID)
        
        ,[Notes] = (select [Notes] from INSERTED where [Id] = @UID)
        
        ,[Name] = (select [Name] from INSERTED where [Id] = @UID)
        
        ,[CharacterTypeId] = (select [CharacterTypeId] from INSERTED where [Id] = @UID)
        
        ,[MaxLevel] = (select [MaxLevel] from INSERTED where [Id] = @UID)
        
        ,[MultipleAllowed] = (select [MultipleAllowed] from INSERTED where [Id] = @UID)
        
        ,[EliteInfluences] = (select [EliteInfluences] from INSERTED where [Id] = @UID)
        
        ,[BackgroundTypeName] = (select [BackgroundTypeName] from INSERTED where [Id] = @UID)
        
        ,[CharacterFullName] = (select [CharacterFullName] from INSERTED where [Id] = @UID)
        
        WHERE [Id] = @UID
        
  
        EXEC sp_SQLOnAir_SyncBackground @ID = @UID
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;
    DECLARE @i int;
    
  
    EXEC sp_SQLOnAir_SyncTime;
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    ROLLBACK TRAN
   
   	DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO

CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfInsertBackground
    ON [dbo].[Background]
    INSTEAD OF INSERT NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    SELECT * INTO [#tempBackground] FROM Inserted
    UPDATE [#tempBackground] SET [Id] = NEWID() WHERE [Id] IS NULL
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM [#tempBackground]

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        INSERT INTO [Background] ([Id],[BackgroundTypeId],[CharacterId],[IsVisible],[Level],[Notes],[Name],[CharacterTypeId],[MaxLevel],[MultipleAllowed],[EliteInfluences],[BackgroundTypeName],[CharacterFullName])
        SELECT [Id],[BackgroundTypeId],[CharacterId],[IsVisible],[Level],[Notes],[Name],[CharacterTypeId],[MaxLevel],[MultipleAllowed],[EliteInfluences],[BackgroundTypeName],[CharacterFullName] from [#tempBackground] where [Id] = @UID
    
        EXEC sp_SQLOnAir_SyncBackground @ID = @UID
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;
    EXEC sp_SQLOnAir_SyncTime;
    
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    
    DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO

CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfDeleteBackground
    ON [dbo].[Background]
    INSTEAD OF DELETE NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM Deleted

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        
        DECLARE @BackgroundTypeIdBackgroundType nvarchar(150)
        SELECT @BackgroundTypeIdBackgroundType = [BackgroundTypeId] FROM [SecondActV3].[dbo].[Background] WHERE [Id] = @UID
        
        DECLARE @CharacterIdCharacter nvarchar(150)
        SELECT @CharacterIdCharacter = [CharacterId] FROM [SecondActV3].[dbo].[Background] WHERE [Id] = @UID
        
  
        
  
        DELETE FROM [SecondActV3].[dbo].[Background] WHERE Id = @UID
    
        
        EXEC sp_SQLOnAir_SyncBackgroundType @ID = @BackgroundTypeIdBackgroundType
        
        EXEC sp_SQLOnAir_SyncCharacter @ID = @CharacterIdCharacter
        
  
        
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;

    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    
    DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO




CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfUpdateCharacter
    ON [dbo].[Character]
    INSTEAD OF UPDATE NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM Inserted

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        
        UPDATE [Character] SET
        
        [ArchetypeTypeCustom] = (select [ArchetypeTypeCustom] from INSERTED where [Id] = @UID)
        
        ,[ArchetypeTypeId] = (select [ArchetypeTypeId] from INSERTED where [Id] = @UID)
        
        ,[AttributeTypeId] = (select [AttributeTypeId] from INSERTED where [Id] = @UID)
        
        ,[AuspiceTypeId] = (select [AuspiceTypeId] from INSERTED where [Id] = @UID)
        
        ,[Bonds] = (select [Bonds] from INSERTED where [Id] = @UID)
        
        ,[BreedTypeId] = (select [BreedTypeId] from INSERTED where [Id] = @UID)
        
        ,[CharacterTypeId] = (select [CharacterTypeId] from INSERTED where [Id] = @UID)
        
        ,[ChronicleId] = (select [ChronicleId] from INSERTED where [Id] = @UID)
        
        ,[ClanTypeId] = (select [ClanTypeId] from INSERTED where [Id] = @UID)
        
        ,[CourtTypeId] = (select [CourtTypeId] from INSERTED where [Id] = @UID)
        
        ,[DateStartTypeId] = (select [DateStartTypeId] from INSERTED where [Id] = @UID)
        
        ,[DeedName] = (select [DeedName] from INSERTED where [Id] = @UID)
        
        ,[Equipment] = (select [Equipment] from INSERTED where [Id] = @UID)
        
        ,[FirstName] = (select [FirstName] from INSERTED where [Id] = @UID)
        
        ,[FlawsDisplay] = (select [FlawsDisplay] from INSERTED where [Id] = @UID)
        
        ,[FocusAppearance] = (select [FocusAppearance] from INSERTED where [Id] = @UID)
        
        ,[FocusCharisma] = (select [FocusCharisma] from INSERTED where [Id] = @UID)
        
        ,[FocusDexterity] = (select [FocusDexterity] from INSERTED where [Id] = @UID)
        
        ,[FocusIntelligence] = (select [FocusIntelligence] from INSERTED where [Id] = @UID)
        
        ,[FocusManipulation] = (select [FocusManipulation] from INSERTED where [Id] = @UID)
        
        ,[FocusPerception] = (select [FocusPerception] from INSERTED where [Id] = @UID)
        
        ,[FocusStamina] = (select [FocusStamina] from INSERTED where [Id] = @UID)
        
        ,[FocusStrength] = (select [FocusStrength] from INSERTED where [Id] = @UID)
        
        ,[FocusWits] = (select [FocusWits] from INSERTED where [Id] = @UID)
        
        ,[GenerationTypeId] = (select [GenerationTypeId] from INSERTED where [Id] = @UID)
        
        ,[HistoryPublic] = (select [HistoryPublic] from INSERTED where [Id] = @UID)
        
        ,[HistoryStorytellers] = (select [HistoryStorytellers] from INSERTED where [Id] = @UID)
        
        ,[IsNpc] = (select [IsNpc] from INSERTED where [Id] = @UID)
        
        ,[IsVisible] = (select [IsVisible] from INSERTED where [Id] = @UID)
        
        ,[KithTypeId] = (select [KithTypeId] from INSERTED where [Id] = @UID)
        
        ,[LastName] = (select [LastName] from INSERTED where [Id] = @UID)
        
        ,[MeritsDisplay] = (select [MeritsDisplay] from INSERTED where [Id] = @UID)
        
        ,[Notes] = (select [Notes] from INSERTED where [Id] = @UID)
        
        ,[PlayerId] = (select [PlayerId] from INSERTED where [Id] = @UID)
        
        ,[Positions] = (select [Positions] from INSERTED where [Id] = @UID)
        
        ,[Quotes] = (select [Quotes] from INSERTED where [Id] = @UID)
        
        ,[RealmTypeId] = (select [RealmTypeId] from INSERTED where [Id] = @UID)
        
        ,[SectTypeId] = (select [SectTypeId] from INSERTED where [Id] = @UID)
        
        ,[StockNpcRating] = (select [StockNpcRating] from INSERTED where [Id] = @UID)
        
        ,[TraitMental] = (select [TraitMental] from INSERTED where [Id] = @UID)
        
        ,[TraitPhysical] = (select [TraitPhysical] from INSERTED where [Id] = @UID)
        
        ,[TraitSocial] = (select [TraitSocial] from INSERTED where [Id] = @UID)
        
        ,[TribeTypeId] = (select [TribeTypeId] from INSERTED where [Id] = @UID)
        
        ,[UpdatedById] = (select [UpdatedById] from INSERTED where [Id] = @UID)
        
        ,[UpdatedOn] = (select [UpdatedOn] from INSERTED where [Id] = @UID)
        
        ,[WantsPcRelations] = (select [WantsPcRelations] from INSERTED where [Id] = @UID)
        
        ,[XpEarned] = (select [XpEarned] from INSERTED where [Id] = @UID)
        
        ,[XpPip] = (select [XpPip] from INSERTED where [Id] = @UID)
        
        ,[XpStModifer] = (select [XpStModifer] from INSERTED where [Id] = @UID)
        
        ,[XpUnspent] = (select [XpUnspent] from INSERTED where [Id] = @UID)
        
        ,[CharacterAuditStatusTypeId] = (select [CharacterAuditStatusTypeId] from INSERTED where [Id] = @UID)
        
        ,[CreatedById] = (select [CreatedById] from INSERTED where [Id] = @UID)
        
        ,[CreatedOn] = (select [CreatedOn] from INSERTED where [Id] = @UID)
        
        ,[PlayedById] = (select [PlayedById] from INSERTED where [Id] = @UID)
        
        ,[UnderworldInfluences] = (select [UnderworldInfluences] from INSERTED where [Id] = @UID)
        
        ,[FinalInfluences] = (select [FinalInfluences] from INSERTED where [Id] = @UID)
        
        ,[Created] = (select [Created] from INSERTED where [Id] = @UID)
        
        ,[FullName] = (select [FullName] from INSERTED where [Id] = @UID)
        
        ,[ClanTypeName] = (select [ClanTypeName] from INSERTED where [Id] = @UID)
        
        ,[ChronicalName] = (select [ChronicalName] from INSERTED where [Id] = @UID)
        
        WHERE [Id] = @UID
        
  
        EXEC sp_SQLOnAir_SyncCharacter @ID = @UID
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;
    DECLARE @i int;
    
    WITH ChangedData ([Id], [ArchetypeName]) AS ( SELECT i.[Id], i.[ArchetypeName] FROM inserted i  where i.[ArchetypeName] is not null 
    EXCEPT SELECT d.[Id] , d.[ArchetypeName] FROM deleted d)
    SELECT @i = count(cd.[Id]) from ChangedData cd join [dbo].[Character] sync on cd.[Id] = sync.[Id] where cd.[ArchetypeName] != sync.[ArchetypeName]
    IF @i > 0
    BEGIN
      RAISERROR('Cannot modify read-only field ''ArchetypeName'' in table ''Character''.',16,1)
    END;
    
    WITH ChangedData ([Id], [EliteInfluences]) AS ( SELECT i.[Id], i.[EliteInfluences] FROM inserted i  where i.[EliteInfluences] is not null 
    EXCEPT SELECT d.[Id] , d.[EliteInfluences] FROM deleted d)
    SELECT @i = count(cd.[Id]) from ChangedData cd join [dbo].[Character] sync on cd.[Id] = sync.[Id] where cd.[EliteInfluences] != sync.[EliteInfluences]
    IF @i > 0
    BEGIN
      RAISERROR('Cannot modify read-only field ''EliteInfluences'' in table ''Character''.',16,1)
    END;
    
  
    EXEC sp_SQLOnAir_SyncTime;
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    ROLLBACK TRAN
   
   	DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO

CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfInsertCharacter
    ON [dbo].[Character]
    INSTEAD OF INSERT NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    SELECT * INTO [#tempCharacter] FROM Inserted
    UPDATE [#tempCharacter] SET [Id] = NEWID() WHERE [Id] IS NULL
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM [#tempCharacter]

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        INSERT INTO [Character] ([Id],[ArchetypeTypeCustom],[ArchetypeTypeId],[AttributeTypeId],[AuspiceTypeId],[Bonds],[BreedTypeId],[CharacterTypeId],[ChronicleId],[ClanTypeId],[CourtTypeId],[DateStartTypeId],[DeedName],[Equipment],[FirstName],[FlawsDisplay],[FocusAppearance],[FocusCharisma],[FocusDexterity],[FocusIntelligence],[FocusManipulation],[FocusPerception],[FocusStamina],[FocusStrength],[FocusWits],[GenerationTypeId],[HistoryPublic],[HistoryStorytellers],[IsNpc],[IsVisible],[KithTypeId],[LastName],[MeritsDisplay],[Notes],[PlayerId],[Positions],[Quotes],[RealmTypeId],[SectTypeId],[StockNpcRating],[TraitMental],[TraitPhysical],[TraitSocial],[TribeTypeId],[UpdatedById],[UpdatedOn],[WantsPcRelations],[XpEarned],[XpPip],[XpStModifer],[XpUnspent],[CharacterAuditStatusTypeId],[CreatedById],[CreatedOn],[PlayedById],[UnderworldInfluences],[FinalInfluences],[Created],[FullName],[ClanTypeName],[ChronicalName],[ArchetypeName],[EliteInfluences])
        SELECT [Id],[ArchetypeTypeCustom],[ArchetypeTypeId],[AttributeTypeId],[AuspiceTypeId],[Bonds],[BreedTypeId],[CharacterTypeId],[ChronicleId],[ClanTypeId],[CourtTypeId],[DateStartTypeId],[DeedName],[Equipment],[FirstName],[FlawsDisplay],[FocusAppearance],[FocusCharisma],[FocusDexterity],[FocusIntelligence],[FocusManipulation],[FocusPerception],[FocusStamina],[FocusStrength],[FocusWits],[GenerationTypeId],[HistoryPublic],[HistoryStorytellers],[IsNpc],[IsVisible],[KithTypeId],[LastName],[MeritsDisplay],[Notes],[PlayerId],[Positions],[Quotes],[RealmTypeId],[SectTypeId],[StockNpcRating],[TraitMental],[TraitPhysical],[TraitSocial],[TribeTypeId],[UpdatedById],[UpdatedOn],[WantsPcRelations],[XpEarned],[XpPip],[XpStModifer],ISNULL([XpUnspent], ((0))),[CharacterAuditStatusTypeId],[CreatedById],[CreatedOn],[PlayedById],[UnderworldInfluences],[FinalInfluences],[Created],[FullName],[ClanTypeName],[ChronicalName],[ArchetypeName],[EliteInfluences] from [#tempCharacter] where [Id] = @UID
    
        EXEC sp_SQLOnAir_SyncCharacter @ID = @UID
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;
    EXEC sp_SQLOnAir_SyncTime;
    
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    
    DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO

CREATE OR ALTER Trigger [dbo].tr_SQLOnAir_InsteadOfDeleteCharacter
    ON [dbo].[Character]
    INSTEAD OF DELETE NOT FOR REPLICATION
AS
BEGIN
BEGIN TRY
    DECLARE TrigTempUpdate_Cursor CURSOR FOR
        SELECT Id FROM Deleted

    DECLARE @UID nvarchar(150)
    OPEN TrigTempUpdate_Cursor;
    FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID WHILE @@FETCH_STATUS = 0
    BEGIN
        
        DECLARE @ArchetypeTypeIdArchetypeType nvarchar(150)
        SELECT @ArchetypeTypeIdArchetypeType = [ArchetypeTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @AttributeTypeIdAttributeType nvarchar(150)
        SELECT @AttributeTypeIdAttributeType = [AttributeTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @AuspiceTypeIdAuspiceType nvarchar(150)
        SELECT @AuspiceTypeIdAuspiceType = [AuspiceTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @BreedTypeIdBreedType nvarchar(150)
        SELECT @BreedTypeIdBreedType = [BreedTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @CharacterTypeIdCharacterType nvarchar(150)
        SELECT @CharacterTypeIdCharacterType = [CharacterTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @ChronicleIdChronicle nvarchar(150)
        SELECT @ChronicleIdChronicle = [ChronicleId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @ClanTypeIdClanType nvarchar(150)
        SELECT @ClanTypeIdClanType = [ClanTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @CourtTypeIdCourtType nvarchar(150)
        SELECT @CourtTypeIdCourtType = [CourtTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @DateStartTypeIdDateStartType nvarchar(150)
        SELECT @DateStartTypeIdDateStartType = [DateStartTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @GenerationTypeIdGenerationType nvarchar(150)
        SELECT @GenerationTypeIdGenerationType = [GenerationTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @KithTypeIdKithType nvarchar(150)
        SELECT @KithTypeIdKithType = [KithTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @PlayerIdAspNetUsers nvarchar(150)
        SELECT @PlayerIdAspNetUsers = [PlayerId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @RealmTypeIdRealmType nvarchar(150)
        SELECT @RealmTypeIdRealmType = [RealmTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @SectTypeIdSectType nvarchar(150)
        SELECT @SectTypeIdSectType = [SectTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @TribeTypeIdTribeType nvarchar(150)
        SELECT @TribeTypeIdTribeType = [TribeTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @UpdatedByIdAspNetUsers nvarchar(150)
        SELECT @UpdatedByIdAspNetUsers = [UpdatedById] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @CharacterAuditStatusTypeIdCharacterAuditStatusType nvarchar(150)
        SELECT @CharacterAuditStatusTypeIdCharacterAuditStatusType = [CharacterAuditStatusTypeId] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @CreatedByIdAspNetUsers nvarchar(150)
        SELECT @CreatedByIdAspNetUsers = [CreatedById] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
        DECLARE @PlayedByIdAspNetUsers nvarchar(150)
        SELECT @PlayedByIdAspNetUsers = [PlayedById] FROM [SecondActV3].[dbo].[Character] WHERE [Id] = @UID
        
  
        
  
        DELETE FROM [SecondActV3].[dbo].[Character] WHERE Id = @UID
    
        
        EXEC sp_SQLOnAir_SyncArchetypeType @ID = @ArchetypeTypeIdArchetypeType
        
        EXEC sp_SQLOnAir_SyncAttributeType @ID = @AttributeTypeIdAttributeType
        
        EXEC sp_SQLOnAir_SyncAuspiceType @ID = @AuspiceTypeIdAuspiceType
        
        EXEC sp_SQLOnAir_SyncBreedType @ID = @BreedTypeIdBreedType
        
        EXEC sp_SQLOnAir_SyncCharacterType @ID = @CharacterTypeIdCharacterType
        
        EXEC sp_SQLOnAir_SyncChronicle @ID = @ChronicleIdChronicle
        
        EXEC sp_SQLOnAir_SyncClanType @ID = @ClanTypeIdClanType
        
        EXEC sp_SQLOnAir_SyncCourtType @ID = @CourtTypeIdCourtType
        
        EXEC sp_SQLOnAir_SyncDateStartType @ID = @DateStartTypeIdDateStartType
        
        EXEC sp_SQLOnAir_SyncGenerationType @ID = @GenerationTypeIdGenerationType
        
        EXEC sp_SQLOnAir_SyncKithType @ID = @KithTypeIdKithType
        
        EXEC sp_SQLOnAir_SyncAspNetUsers @ID = @PlayerIdAspNetUsers
        
        EXEC sp_SQLOnAir_SyncRealmType @ID = @RealmTypeIdRealmType
        
        EXEC sp_SQLOnAir_SyncSectType @ID = @SectTypeIdSectType
        
        EXEC sp_SQLOnAir_SyncTribeType @ID = @TribeTypeIdTribeType
        
        EXEC sp_SQLOnAir_SyncAspNetUsers @ID = @UpdatedByIdAspNetUsers
        
        EXEC sp_SQLOnAir_SyncCharacterAuditStatusType @ID = @CharacterAuditStatusTypeIdCharacterAuditStatusType
        
        EXEC sp_SQLOnAir_SyncAspNetUsers @ID = @CreatedByIdAspNetUsers
        
        EXEC sp_SQLOnAir_SyncAspNetUsers @ID = @PlayedByIdAspNetUsers
        
  
        
        FETCH NEXT FROM TrigTempUpdate_Cursor INTO @UID
    END;

    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
END TRY
BEGIN CATCH
    CLOSE TrigTempUpdate_Cursor;
    DEALLOCATE TrigTempUpdate_Cursor;
    
    DECLARE @ErrorMessage NVARCHAR(1000) = ERROR_MESSAGE() 
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY()
    DECLARE @ErrorState INT = ERROR_STATE() 
	  RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH
END
GO



          
