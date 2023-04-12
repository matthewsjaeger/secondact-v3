-- use [cli-sd1]
                    


update rvs set 
 rvs.[ArchetypeTypeCustom] = src.[ArchetypeTypeCustom]
 , rvs.[ArchetypeTypeId] = src.[ArchetypeTypeId]
 , rvs.[AttributeTypeId] = src.[AttributeTypeId]
 , rvs.[AuspiceTypeId] = src.[AuspiceTypeId]
 , rvs.[Bonds] = src.[Bonds]
 , rvs.[BreedTypeId] = src.[BreedTypeId]
 , rvs.[CharacterTypeId] = src.[CharacterTypeId]
 , rvs.[ChronicleId] = src.[ChronicleId]
 , rvs.[ClanTypeId] = src.[ClanTypeId]
 , rvs.[CourtTypeId] = src.[CourtTypeId]
 , rvs.[DateStartTypeId] = src.[DateStartTypeId]
 , rvs.[DeedName] = src.[DeedName]
 , rvs.[Equipment] = src.[Equipment]
 , rvs.[FirstName] = src.[FirstName]
 , rvs.[FlawsDisplay] = src.[FlawsDisplay]
 , rvs.[FocusAppearance] = src.[FocusAppearance]
 , rvs.[FocusCharisma] = src.[FocusCharisma]
 , rvs.[FocusDexterity] = src.[FocusDexterity]
 , rvs.[FocusIntelligence] = src.[FocusIntelligence]
 , rvs.[FocusManipulation] = src.[FocusManipulation]
 , rvs.[FocusPerception] = src.[FocusPerception]
 , rvs.[FocusStamina] = src.[FocusStamina]
 , rvs.[FocusStrength] = src.[FocusStrength]
 , rvs.[FocusWits] = src.[FocusWits]
 , rvs.[GenerationTypeId] = src.[GenerationTypeId]
 , rvs.[HistoryPublic] = src.[HistoryPublic]
 , rvs.[HistoryStorytellers] = src.[HistoryStorytellers]
 , rvs.[IsNpc] = src.[IsNpc]
 , rvs.[IsVisible] = src.[IsVisible]
 , rvs.[KithTypeId] = src.[KithTypeId]
 , rvs.[LastName] = src.[LastName]
 , rvs.[MeritsDisplay] = src.[MeritsDisplay]
 , rvs.[Notes] = src.[Notes]
 , rvs.[PlayerId] = src.[PlayerId]
 , rvs.[Positions] = src.[Positions]
 , rvs.[Quotes] = src.[Quotes]
 , rvs.[RealmTypeId] = src.[RealmTypeId]
 , rvs.[SectTypeId] = src.[SectTypeId]
 , rvs.[StockNpcRating] = src.[StockNpcRating]
 , rvs.[TraitMental] = src.[TraitMental]
 , rvs.[TraitPhysical] = src.[TraitPhysical]
 , rvs.[TraitSocial] = src.[TraitSocial]
 , rvs.[TribeTypeId] = src.[TribeTypeId]
 , rvs.[UpdatedById] = src.[UpdatedById]
 , rvs.[UpdatedOn] = src.[UpdatedOn]
 , rvs.[WantsPcRelations] = src.[WantsPcRelations]
 , rvs.[XpEarned] = src.[XpEarned]
 , rvs.[XpPip] = src.[XpPip]
 , rvs.[XpStModifer] = src.[XpStModifer]
 , rvs.[XpUnspent] = src.[XpUnspent]
 , rvs.[CharacterAuditStatusTypeId] = src.[CharacterAuditStatusTypeId]
 , rvs.[CreatedById] = src.[CreatedById]
 , rvs.[CreatedOn] = src.[CreatedOn]
 , rvs.[PlayedById] = src.[PlayedById]
 , rvs.[UnderworldInfluences] = src.[UnderworldInfluences]
 , rvs.[FinalInfluences] = src.[FinalInfluences]
 , rvs.[Created] = src.[Created]
 , rvs.[FullName] = src.[FullName]
 , rvs.[ClanTypeName] = src.[ClanTypeName]
 , rvs.[ChronicalName] = src.[ChronicalName]
 , rvs.[ArchetypeName] = src.[ArchetypeName]
 , rvs.[EliteInfluences] = src.[EliteInfluences]
-- select rvs.*, src.*
from [comp].[Character] src
join [SecondActV3].[dbo].[Character] rvs on src.[Id] = rvs.[Id]
WHERE 
 coalesce(cast(rvs.[ArchetypeTypeCustom] as nvarchar(2000)), '') != coalesce(cast(src.[ArchetypeTypeCustom] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[ArchetypeTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[ArchetypeTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[AttributeTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[AttributeTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[AuspiceTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[AuspiceTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[Bonds] as nvarchar(2000)), '') != coalesce(cast(src.[Bonds] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[BreedTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[BreedTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[CharacterTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[CharacterTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[ChronicleId] as nvarchar(2000)), '') != coalesce(cast(src.[ChronicleId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[ClanTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[ClanTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[CourtTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[CourtTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[DateStartTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[DateStartTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[DeedName] as nvarchar(2000)), '') != coalesce(cast(src.[DeedName] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[Equipment] as nvarchar(2000)), '') != coalesce(cast(src.[Equipment] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FirstName] as nvarchar(2000)), '') != coalesce(cast(src.[FirstName] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FlawsDisplay] as nvarchar(2000)), '') != coalesce(cast(src.[FlawsDisplay] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusAppearance] as nvarchar(2000)), '') != coalesce(cast(src.[FocusAppearance] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusCharisma] as nvarchar(2000)), '') != coalesce(cast(src.[FocusCharisma] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusDexterity] as nvarchar(2000)), '') != coalesce(cast(src.[FocusDexterity] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusIntelligence] as nvarchar(2000)), '') != coalesce(cast(src.[FocusIntelligence] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusManipulation] as nvarchar(2000)), '') != coalesce(cast(src.[FocusManipulation] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusPerception] as nvarchar(2000)), '') != coalesce(cast(src.[FocusPerception] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusStamina] as nvarchar(2000)), '') != coalesce(cast(src.[FocusStamina] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusStrength] as nvarchar(2000)), '') != coalesce(cast(src.[FocusStrength] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FocusWits] as nvarchar(2000)), '') != coalesce(cast(src.[FocusWits] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[GenerationTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[GenerationTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[HistoryPublic] as nvarchar(2000)), '') != coalesce(cast(src.[HistoryPublic] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[HistoryStorytellers] as nvarchar(2000)), '') != coalesce(cast(src.[HistoryStorytellers] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[IsNpc] as nvarchar(2000)), '') != coalesce(cast(src.[IsNpc] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[IsVisible] as nvarchar(2000)), '') != coalesce(cast(src.[IsVisible] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[KithTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[KithTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[LastName] as nvarchar(2000)), '') != coalesce(cast(src.[LastName] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[MeritsDisplay] as nvarchar(2000)), '') != coalesce(cast(src.[MeritsDisplay] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[Notes] as nvarchar(2000)), '') != coalesce(cast(src.[Notes] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[PlayerId] as nvarchar(2000)), '') != coalesce(cast(src.[PlayerId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[Positions] as nvarchar(2000)), '') != coalesce(cast(src.[Positions] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[Quotes] as nvarchar(2000)), '') != coalesce(cast(src.[Quotes] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[RealmTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[RealmTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[SectTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[SectTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[StockNpcRating] as nvarchar(2000)), '') != coalesce(cast(src.[StockNpcRating] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[TraitMental] as nvarchar(2000)), '') != coalesce(cast(src.[TraitMental] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[TraitPhysical] as nvarchar(2000)), '') != coalesce(cast(src.[TraitPhysical] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[TraitSocial] as nvarchar(2000)), '') != coalesce(cast(src.[TraitSocial] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[TribeTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[TribeTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[UpdatedById] as nvarchar(2000)), '') != coalesce(cast(src.[UpdatedById] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[UpdatedOn] as nvarchar(2000)), '') != coalesce(cast(src.[UpdatedOn] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[WantsPcRelations] as nvarchar(2000)), '') != coalesce(cast(src.[WantsPcRelations] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[XpEarned] as nvarchar(2000)), '') != coalesce(cast(src.[XpEarned] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[XpPip] as nvarchar(2000)), '') != coalesce(cast(src.[XpPip] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[XpStModifer] as nvarchar(2000)), '') != coalesce(cast(src.[XpStModifer] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[XpUnspent] as nvarchar(2000)), '') != coalesce(cast(src.[XpUnspent] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[CharacterAuditStatusTypeId] as nvarchar(2000)), '') != coalesce(cast(src.[CharacterAuditStatusTypeId] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[CreatedById] as nvarchar(2000)), '') != coalesce(cast(src.[CreatedById] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[CreatedOn] as nvarchar(2000)), '') != coalesce(cast(src.[CreatedOn] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[PlayedById] as nvarchar(2000)), '') != coalesce(cast(src.[PlayedById] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[UnderworldInfluences] as nvarchar(2000)), '') != coalesce(cast(src.[UnderworldInfluences] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FinalInfluences] as nvarchar(2000)), '') != coalesce(cast(src.[FinalInfluences] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[Created] as nvarchar(2000)), '') != coalesce(cast(src.[Created] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[FullName] as nvarchar(2000)), '') != coalesce(cast(src.[FullName] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[ClanTypeName] as nvarchar(2000)), '') != coalesce(cast(src.[ClanTypeName] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[ChronicalName] as nvarchar(2000)), '') != coalesce(cast(src.[ChronicalName] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[ArchetypeName] as nvarchar(2000)), '') != coalesce(cast(src.[ArchetypeName] as nvarchar(2000)),'')
OR  coalesce(cast(rvs.[EliteInfluences] as nvarchar(2000)), '') != coalesce(cast(src.[EliteInfluences] as nvarchar(2000)),'')
    