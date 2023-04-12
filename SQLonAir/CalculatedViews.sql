
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
    
                
