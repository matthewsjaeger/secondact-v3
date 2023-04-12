
USE [SecondActV3_SQLonAir]
GO

-- Drop triggers and stored procedures


    
      
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfUpdateArchetypeType
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfInsertArchetypeType
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfDeleteArchetypeType
IF EXISTS (select * from [SecondActV3_SQLonAir].[dbo].sysobjects where id = object_id(N'[dbo].[sp_SecondActV3_SQLonAir_SyncArchetypeType]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_SQLOnAir_SyncArchetypeType]
GO
    
      
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfUpdateBackground
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfInsertBackground
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfDeleteBackground
IF EXISTS (select * from [SecondActV3_SQLonAir].[dbo].sysobjects where id = object_id(N'[dbo].[sp_SecondActV3_SQLonAir_SyncBackground]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_SQLOnAir_SyncBackground]
GO
    
      
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfUpdateCharacter
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfInsertCharacter
DROP TRIGGER IF EXISTS [dbo].tr_SQLOnAir_InsteadOfDeleteCharacter
IF EXISTS (select * from [SecondActV3_SQLonAir].[dbo].sysobjects where id = object_id(N'[dbo].[sp_SecondActV3_SQLonAir_SyncCharacter]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
DROP PROCEDURE [dbo].[sp_SQLOnAir_SyncCharacter]
GO
    
  

-- Drop views 

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = '__EFMigrationsHistory')
DROP VIEW [dbo].[__EFMigrationsHistory]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = '__EFMigrationsHistory')
DROP VIEW [comp].[__EFMigrationsHistory]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = '__EFMigrationsHistory2')
DROP VIEW [dbo].[__EFMigrationsHistory2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = '__EFMigrationsHistory2')
DROP VIEW [comp].[__EFMigrationsHistory2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = '__EFMigrationsHistory3')
DROP VIEW [dbo].[__EFMigrationsHistory3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = '__EFMigrationsHistory3')
DROP VIEW [comp].[__EFMigrationsHistory3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = '__EFMigrationsHistory4')
DROP VIEW [dbo].[__EFMigrationsHistory4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = '__EFMigrationsHistory4')
DROP VIEW [comp].[__EFMigrationsHistory4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = '__EFMigrationsHistory5')
DROP VIEW [dbo].[__EFMigrationsHistory5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = '__EFMigrationsHistory5')
DROP VIEW [comp].[__EFMigrationsHistory5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ArchetypeType')
DROP VIEW [dbo].[ArchetypeType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ArchetypeType')
DROP VIEW [comp].[ArchetypeType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ArchetypeType2')
DROP VIEW [dbo].[ArchetypeType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ArchetypeType2')
DROP VIEW [comp].[ArchetypeType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ArchetypeType3')
DROP VIEW [dbo].[ArchetypeType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ArchetypeType3')
DROP VIEW [comp].[ArchetypeType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ArchetypeType4')
DROP VIEW [dbo].[ArchetypeType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ArchetypeType4')
DROP VIEW [comp].[ArchetypeType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ArchetypeType5')
DROP VIEW [dbo].[ArchetypeType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ArchetypeType5')
DROP VIEW [comp].[ArchetypeType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoleClaims')
DROP VIEW [dbo].[AspNetRoleClaims]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoleClaims')
DROP VIEW [comp].[AspNetRoleClaims]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoleClaims2')
DROP VIEW [dbo].[AspNetRoleClaims2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoleClaims2')
DROP VIEW [comp].[AspNetRoleClaims2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoleClaims3')
DROP VIEW [dbo].[AspNetRoleClaims3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoleClaims3')
DROP VIEW [comp].[AspNetRoleClaims3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoleClaims4')
DROP VIEW [dbo].[AspNetRoleClaims4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoleClaims4')
DROP VIEW [comp].[AspNetRoleClaims4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoleClaims5')
DROP VIEW [dbo].[AspNetRoleClaims5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoleClaims5')
DROP VIEW [comp].[AspNetRoleClaims5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoles')
DROP VIEW [dbo].[AspNetRoles]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoles')
DROP VIEW [comp].[AspNetRoles]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoles2')
DROP VIEW [dbo].[AspNetRoles2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoles2')
DROP VIEW [comp].[AspNetRoles2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoles3')
DROP VIEW [dbo].[AspNetRoles3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoles3')
DROP VIEW [comp].[AspNetRoles3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoles4')
DROP VIEW [dbo].[AspNetRoles4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoles4')
DROP VIEW [comp].[AspNetRoles4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetRoles5')
DROP VIEW [dbo].[AspNetRoles5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetRoles5')
DROP VIEW [comp].[AspNetRoles5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserClaims')
DROP VIEW [dbo].[AspNetUserClaims]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserClaims')
DROP VIEW [comp].[AspNetUserClaims]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserClaims2')
DROP VIEW [dbo].[AspNetUserClaims2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserClaims2')
DROP VIEW [comp].[AspNetUserClaims2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserClaims3')
DROP VIEW [dbo].[AspNetUserClaims3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserClaims3')
DROP VIEW [comp].[AspNetUserClaims3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserClaims4')
DROP VIEW [dbo].[AspNetUserClaims4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserClaims4')
DROP VIEW [comp].[AspNetUserClaims4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserClaims5')
DROP VIEW [dbo].[AspNetUserClaims5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserClaims5')
DROP VIEW [comp].[AspNetUserClaims5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserLogins')
DROP VIEW [dbo].[AspNetUserLogins]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserLogins')
DROP VIEW [comp].[AspNetUserLogins]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserLogins2')
DROP VIEW [dbo].[AspNetUserLogins2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserLogins2')
DROP VIEW [comp].[AspNetUserLogins2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserLogins3')
DROP VIEW [dbo].[AspNetUserLogins3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserLogins3')
DROP VIEW [comp].[AspNetUserLogins3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserLogins4')
DROP VIEW [dbo].[AspNetUserLogins4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserLogins4')
DROP VIEW [comp].[AspNetUserLogins4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserLogins5')
DROP VIEW [dbo].[AspNetUserLogins5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserLogins5')
DROP VIEW [comp].[AspNetUserLogins5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserRoles')
DROP VIEW [dbo].[AspNetUserRoles]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserRoles')
DROP VIEW [comp].[AspNetUserRoles]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserRoles2')
DROP VIEW [dbo].[AspNetUserRoles2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserRoles2')
DROP VIEW [comp].[AspNetUserRoles2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserRoles3')
DROP VIEW [dbo].[AspNetUserRoles3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserRoles3')
DROP VIEW [comp].[AspNetUserRoles3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserRoles4')
DROP VIEW [dbo].[AspNetUserRoles4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserRoles4')
DROP VIEW [comp].[AspNetUserRoles4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserRoles5')
DROP VIEW [dbo].[AspNetUserRoles5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserRoles5')
DROP VIEW [comp].[AspNetUserRoles5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers')
DROP VIEW [dbo].[AspNetUsers]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers')
DROP VIEW [comp].[AspNetUsers]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers_Audit')
DROP VIEW [dbo].[AspNetUsers_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers_Audit')
DROP VIEW [comp].[AspNetUsers_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers_Audit2')
DROP VIEW [dbo].[AspNetUsers_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers_Audit2')
DROP VIEW [comp].[AspNetUsers_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers_Audit3')
DROP VIEW [dbo].[AspNetUsers_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers_Audit3')
DROP VIEW [comp].[AspNetUsers_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers_Audit4')
DROP VIEW [dbo].[AspNetUsers_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers_Audit4')
DROP VIEW [comp].[AspNetUsers_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers_Audit5')
DROP VIEW [dbo].[AspNetUsers_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers_Audit5')
DROP VIEW [comp].[AspNetUsers_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers2')
DROP VIEW [dbo].[AspNetUsers2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers2')
DROP VIEW [comp].[AspNetUsers2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers3')
DROP VIEW [dbo].[AspNetUsers3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers3')
DROP VIEW [comp].[AspNetUsers3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers4')
DROP VIEW [dbo].[AspNetUsers4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers4')
DROP VIEW [comp].[AspNetUsers4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUsers5')
DROP VIEW [dbo].[AspNetUsers5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUsers5')
DROP VIEW [comp].[AspNetUsers5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserTokens')
DROP VIEW [dbo].[AspNetUserTokens]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserTokens')
DROP VIEW [comp].[AspNetUserTokens]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserTokens2')
DROP VIEW [dbo].[AspNetUserTokens2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserTokens2')
DROP VIEW [comp].[AspNetUserTokens2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserTokens3')
DROP VIEW [dbo].[AspNetUserTokens3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserTokens3')
DROP VIEW [comp].[AspNetUserTokens3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserTokens4')
DROP VIEW [dbo].[AspNetUserTokens4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserTokens4')
DROP VIEW [comp].[AspNetUserTokens4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AspNetUserTokens5')
DROP VIEW [dbo].[AspNetUserTokens5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AspNetUserTokens5')
DROP VIEW [comp].[AspNetUserTokens5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeFocusType')
DROP VIEW [dbo].[AttributeFocusType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeFocusType')
DROP VIEW [comp].[AttributeFocusType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeFocusType2')
DROP VIEW [dbo].[AttributeFocusType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeFocusType2')
DROP VIEW [comp].[AttributeFocusType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeFocusType3')
DROP VIEW [dbo].[AttributeFocusType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeFocusType3')
DROP VIEW [comp].[AttributeFocusType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeFocusType4')
DROP VIEW [dbo].[AttributeFocusType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeFocusType4')
DROP VIEW [comp].[AttributeFocusType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeFocusType5')
DROP VIEW [dbo].[AttributeFocusType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeFocusType5')
DROP VIEW [comp].[AttributeFocusType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeType')
DROP VIEW [dbo].[AttributeType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeType')
DROP VIEW [comp].[AttributeType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeType2')
DROP VIEW [dbo].[AttributeType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeType2')
DROP VIEW [comp].[AttributeType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeType3')
DROP VIEW [dbo].[AttributeType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeType3')
DROP VIEW [comp].[AttributeType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeType4')
DROP VIEW [dbo].[AttributeType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeType4')
DROP VIEW [comp].[AttributeType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AttributeType5')
DROP VIEW [dbo].[AttributeType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AttributeType5')
DROP VIEW [comp].[AttributeType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AuspiceType')
DROP VIEW [dbo].[AuspiceType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AuspiceType')
DROP VIEW [comp].[AuspiceType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AuspiceType2')
DROP VIEW [dbo].[AuspiceType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AuspiceType2')
DROP VIEW [comp].[AuspiceType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AuspiceType3')
DROP VIEW [dbo].[AuspiceType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AuspiceType3')
DROP VIEW [comp].[AuspiceType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AuspiceType4')
DROP VIEW [dbo].[AuspiceType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AuspiceType4')
DROP VIEW [comp].[AuspiceType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'AuspiceType5')
DROP VIEW [dbo].[AuspiceType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'AuspiceType5')
DROP VIEW [comp].[AuspiceType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background')
DROP VIEW [dbo].[Background]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background')
DROP VIEW [comp].[Background]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background_Audit')
DROP VIEW [dbo].[Background_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background_Audit')
DROP VIEW [comp].[Background_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background_Audit2')
DROP VIEW [dbo].[Background_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background_Audit2')
DROP VIEW [comp].[Background_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background_Audit3')
DROP VIEW [dbo].[Background_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background_Audit3')
DROP VIEW [comp].[Background_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background_Audit4')
DROP VIEW [dbo].[Background_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background_Audit4')
DROP VIEW [comp].[Background_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background_Audit5')
DROP VIEW [dbo].[Background_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background_Audit5')
DROP VIEW [comp].[Background_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background2')
DROP VIEW [dbo].[Background2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background2')
DROP VIEW [comp].[Background2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background3')
DROP VIEW [dbo].[Background3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background3')
DROP VIEW [comp].[Background3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background4')
DROP VIEW [dbo].[Background4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background4')
DROP VIEW [comp].[Background4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Background5')
DROP VIEW [dbo].[Background5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Background5')
DROP VIEW [comp].[Background5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BackgroundType')
DROP VIEW [dbo].[BackgroundType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BackgroundType')
DROP VIEW [comp].[BackgroundType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BackgroundType2')
DROP VIEW [dbo].[BackgroundType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BackgroundType2')
DROP VIEW [comp].[BackgroundType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BackgroundType3')
DROP VIEW [dbo].[BackgroundType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BackgroundType3')
DROP VIEW [comp].[BackgroundType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BackgroundType4')
DROP VIEW [dbo].[BackgroundType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BackgroundType4')
DROP VIEW [comp].[BackgroundType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BackgroundType5')
DROP VIEW [dbo].[BackgroundType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BackgroundType5')
DROP VIEW [comp].[BackgroundType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BreedType')
DROP VIEW [dbo].[BreedType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BreedType')
DROP VIEW [comp].[BreedType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BreedType2')
DROP VIEW [dbo].[BreedType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BreedType2')
DROP VIEW [comp].[BreedType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BreedType3')
DROP VIEW [dbo].[BreedType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BreedType3')
DROP VIEW [comp].[BreedType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BreedType4')
DROP VIEW [dbo].[BreedType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BreedType4')
DROP VIEW [comp].[BreedType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'BreedType5')
DROP VIEW [dbo].[BreedType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'BreedType5')
DROP VIEW [comp].[BreedType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CacheName')
DROP VIEW [dbo].[CacheName]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CacheName')
DROP VIEW [comp].[CacheName]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CacheName2')
DROP VIEW [dbo].[CacheName2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CacheName2')
DROP VIEW [comp].[CacheName2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CacheName3')
DROP VIEW [dbo].[CacheName3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CacheName3')
DROP VIEW [comp].[CacheName3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CacheName4')
DROP VIEW [dbo].[CacheName4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CacheName4')
DROP VIEW [comp].[CacheName4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CacheName5')
DROP VIEW [dbo].[CacheName5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CacheName5')
DROP VIEW [comp].[CacheName5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character')
DROP VIEW [dbo].[Character]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character')
DROP VIEW [comp].[Character]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character_Audit')
DROP VIEW [dbo].[Character_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character_Audit')
DROP VIEW [comp].[Character_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character_Audit2')
DROP VIEW [dbo].[Character_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character_Audit2')
DROP VIEW [comp].[Character_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character_Audit3')
DROP VIEW [dbo].[Character_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character_Audit3')
DROP VIEW [comp].[Character_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character_Audit4')
DROP VIEW [dbo].[Character_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character_Audit4')
DROP VIEW [comp].[Character_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character_Audit5')
DROP VIEW [dbo].[Character_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character_Audit5')
DROP VIEW [comp].[Character_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character2')
DROP VIEW [dbo].[Character2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character2')
DROP VIEW [comp].[Character2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character3')
DROP VIEW [dbo].[Character3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character3')
DROP VIEW [comp].[Character3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character4')
DROP VIEW [dbo].[Character4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character4')
DROP VIEW [comp].[Character4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Character5')
DROP VIEW [dbo].[Character5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Character5')
DROP VIEW [comp].[Character5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAudit')
DROP VIEW [dbo].[CharacterAudit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAudit')
DROP VIEW [comp].[CharacterAudit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAudit2')
DROP VIEW [dbo].[CharacterAudit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAudit2')
DROP VIEW [comp].[CharacterAudit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAudit3')
DROP VIEW [dbo].[CharacterAudit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAudit3')
DROP VIEW [comp].[CharacterAudit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAudit4')
DROP VIEW [dbo].[CharacterAudit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAudit4')
DROP VIEW [comp].[CharacterAudit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAudit5')
DROP VIEW [dbo].[CharacterAudit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAudit5')
DROP VIEW [comp].[CharacterAudit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAuditStatusType')
DROP VIEW [dbo].[CharacterAuditStatusType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAuditStatusType')
DROP VIEW [comp].[CharacterAuditStatusType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAuditStatusType2')
DROP VIEW [dbo].[CharacterAuditStatusType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAuditStatusType2')
DROP VIEW [comp].[CharacterAuditStatusType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAuditStatusType3')
DROP VIEW [dbo].[CharacterAuditStatusType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAuditStatusType3')
DROP VIEW [comp].[CharacterAuditStatusType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAuditStatusType4')
DROP VIEW [dbo].[CharacterAuditStatusType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAuditStatusType4')
DROP VIEW [comp].[CharacterAuditStatusType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterAuditStatusType5')
DROP VIEW [dbo].[CharacterAuditStatusType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterAuditStatusType5')
DROP VIEW [comp].[CharacterAuditStatusType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterType')
DROP VIEW [dbo].[CharacterType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterType')
DROP VIEW [comp].[CharacterType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterType2')
DROP VIEW [dbo].[CharacterType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterType2')
DROP VIEW [comp].[CharacterType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterType3')
DROP VIEW [dbo].[CharacterType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterType3')
DROP VIEW [comp].[CharacterType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterType4')
DROP VIEW [dbo].[CharacterType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterType4')
DROP VIEW [comp].[CharacterType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CharacterType5')
DROP VIEW [dbo].[CharacterType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CharacterType5')
DROP VIEW [comp].[CharacterType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle')
DROP VIEW [dbo].[Chronicle]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle')
DROP VIEW [comp].[Chronicle]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle_Audit')
DROP VIEW [dbo].[Chronicle_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle_Audit')
DROP VIEW [comp].[Chronicle_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle_Audit2')
DROP VIEW [dbo].[Chronicle_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle_Audit2')
DROP VIEW [comp].[Chronicle_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle_Audit3')
DROP VIEW [dbo].[Chronicle_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle_Audit3')
DROP VIEW [comp].[Chronicle_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle_Audit4')
DROP VIEW [dbo].[Chronicle_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle_Audit4')
DROP VIEW [comp].[Chronicle_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle_Audit5')
DROP VIEW [dbo].[Chronicle_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle_Audit5')
DROP VIEW [comp].[Chronicle_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle2')
DROP VIEW [dbo].[Chronicle2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle2')
DROP VIEW [comp].[Chronicle2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle3')
DROP VIEW [dbo].[Chronicle3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle3')
DROP VIEW [comp].[Chronicle3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle4')
DROP VIEW [dbo].[Chronicle4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle4')
DROP VIEW [comp].[Chronicle4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Chronicle5')
DROP VIEW [dbo].[Chronicle5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Chronicle5')
DROP VIEW [comp].[Chronicle5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleSettingType')
DROP VIEW [dbo].[ChronicleSettingType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleSettingType')
DROP VIEW [comp].[ChronicleSettingType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleSettingType2')
DROP VIEW [dbo].[ChronicleSettingType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleSettingType2')
DROP VIEW [comp].[ChronicleSettingType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleSettingType3')
DROP VIEW [dbo].[ChronicleSettingType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleSettingType3')
DROP VIEW [comp].[ChronicleSettingType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleSettingType4')
DROP VIEW [dbo].[ChronicleSettingType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleSettingType4')
DROP VIEW [comp].[ChronicleSettingType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleSettingType5')
DROP VIEW [dbo].[ChronicleSettingType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleSettingType5')
DROP VIEW [comp].[ChronicleSettingType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStatusType')
DROP VIEW [dbo].[ChronicleStatusType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStatusType')
DROP VIEW [comp].[ChronicleStatusType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStatusType2')
DROP VIEW [dbo].[ChronicleStatusType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStatusType2')
DROP VIEW [comp].[ChronicleStatusType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStatusType3')
DROP VIEW [dbo].[ChronicleStatusType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStatusType3')
DROP VIEW [comp].[ChronicleStatusType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStatusType4')
DROP VIEW [dbo].[ChronicleStatusType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStatusType4')
DROP VIEW [comp].[ChronicleStatusType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStatusType5')
DROP VIEW [dbo].[ChronicleStatusType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStatusType5')
DROP VIEW [comp].[ChronicleStatusType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller')
DROP VIEW [dbo].[ChronicleStoryteller]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller')
DROP VIEW [comp].[ChronicleStoryteller]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller_Audit')
DROP VIEW [dbo].[ChronicleStoryteller_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller_Audit')
DROP VIEW [comp].[ChronicleStoryteller_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller_Audit2')
DROP VIEW [dbo].[ChronicleStoryteller_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller_Audit2')
DROP VIEW [comp].[ChronicleStoryteller_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller_Audit3')
DROP VIEW [dbo].[ChronicleStoryteller_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller_Audit3')
DROP VIEW [comp].[ChronicleStoryteller_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller_Audit4')
DROP VIEW [dbo].[ChronicleStoryteller_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller_Audit4')
DROP VIEW [comp].[ChronicleStoryteller_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller_Audit5')
DROP VIEW [dbo].[ChronicleStoryteller_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller_Audit5')
DROP VIEW [comp].[ChronicleStoryteller_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller2')
DROP VIEW [dbo].[ChronicleStoryteller2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller2')
DROP VIEW [comp].[ChronicleStoryteller2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller3')
DROP VIEW [dbo].[ChronicleStoryteller3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller3')
DROP VIEW [comp].[ChronicleStoryteller3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller4')
DROP VIEW [dbo].[ChronicleStoryteller4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller4')
DROP VIEW [comp].[ChronicleStoryteller4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleStoryteller5')
DROP VIEW [dbo].[ChronicleStoryteller5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleStoryteller5')
DROP VIEW [comp].[ChronicleStoryteller5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit')
DROP VIEW [dbo].[ChronicleVisit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit')
DROP VIEW [comp].[ChronicleVisit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit_Audit')
DROP VIEW [dbo].[ChronicleVisit_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit_Audit')
DROP VIEW [comp].[ChronicleVisit_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit_Audit2')
DROP VIEW [dbo].[ChronicleVisit_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit_Audit2')
DROP VIEW [comp].[ChronicleVisit_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit_Audit3')
DROP VIEW [dbo].[ChronicleVisit_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit_Audit3')
DROP VIEW [comp].[ChronicleVisit_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit_Audit4')
DROP VIEW [dbo].[ChronicleVisit_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit_Audit4')
DROP VIEW [comp].[ChronicleVisit_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit_Audit5')
DROP VIEW [dbo].[ChronicleVisit_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit_Audit5')
DROP VIEW [comp].[ChronicleVisit_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit2')
DROP VIEW [dbo].[ChronicleVisit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit2')
DROP VIEW [comp].[ChronicleVisit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit3')
DROP VIEW [dbo].[ChronicleVisit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit3')
DROP VIEW [comp].[ChronicleVisit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit4')
DROP VIEW [dbo].[ChronicleVisit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit4')
DROP VIEW [comp].[ChronicleVisit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisit5')
DROP VIEW [dbo].[ChronicleVisit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisit5')
DROP VIEW [comp].[ChronicleVisit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisitStatusType')
DROP VIEW [dbo].[ChronicleVisitStatusType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisitStatusType')
DROP VIEW [comp].[ChronicleVisitStatusType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisitStatusType2')
DROP VIEW [dbo].[ChronicleVisitStatusType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisitStatusType2')
DROP VIEW [comp].[ChronicleVisitStatusType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisitStatusType3')
DROP VIEW [dbo].[ChronicleVisitStatusType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisitStatusType3')
DROP VIEW [comp].[ChronicleVisitStatusType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisitStatusType4')
DROP VIEW [dbo].[ChronicleVisitStatusType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisitStatusType4')
DROP VIEW [comp].[ChronicleVisitStatusType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ChronicleVisitStatusType5')
DROP VIEW [dbo].[ChronicleVisitStatusType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ChronicleVisitStatusType5')
DROP VIEW [comp].[ChronicleVisitStatusType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanGroupType')
DROP VIEW [dbo].[ClanGroupType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanGroupType')
DROP VIEW [comp].[ClanGroupType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanGroupType2')
DROP VIEW [dbo].[ClanGroupType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanGroupType2')
DROP VIEW [comp].[ClanGroupType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanGroupType3')
DROP VIEW [dbo].[ClanGroupType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanGroupType3')
DROP VIEW [comp].[ClanGroupType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanGroupType4')
DROP VIEW [dbo].[ClanGroupType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanGroupType4')
DROP VIEW [comp].[ClanGroupType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanGroupType5')
DROP VIEW [dbo].[ClanGroupType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanGroupType5')
DROP VIEW [comp].[ClanGroupType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanType')
DROP VIEW [dbo].[ClanType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanType')
DROP VIEW [comp].[ClanType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanType2')
DROP VIEW [dbo].[ClanType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanType2')
DROP VIEW [comp].[ClanType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanType3')
DROP VIEW [dbo].[ClanType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanType3')
DROP VIEW [comp].[ClanType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanType4')
DROP VIEW [dbo].[ClanType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanType4')
DROP VIEW [comp].[ClanType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'ClanType5')
DROP VIEW [dbo].[ClanType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'ClanType5')
DROP VIEW [comp].[ClanType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CourtType')
DROP VIEW [dbo].[CourtType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CourtType')
DROP VIEW [comp].[CourtType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CourtType2')
DROP VIEW [dbo].[CourtType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CourtType2')
DROP VIEW [comp].[CourtType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CourtType3')
DROP VIEW [dbo].[CourtType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CourtType3')
DROP VIEW [comp].[CourtType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CourtType4')
DROP VIEW [dbo].[CourtType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CourtType4')
DROP VIEW [comp].[CourtType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'CourtType5')
DROP VIEW [dbo].[CourtType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'CourtType5')
DROP VIEW [comp].[CourtType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DateStartType')
DROP VIEW [dbo].[DateStartType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DateStartType')
DROP VIEW [comp].[DateStartType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DateStartType2')
DROP VIEW [dbo].[DateStartType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DateStartType2')
DROP VIEW [comp].[DateStartType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DateStartType3')
DROP VIEW [dbo].[DateStartType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DateStartType3')
DROP VIEW [comp].[DateStartType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DateStartType4')
DROP VIEW [dbo].[DateStartType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DateStartType4')
DROP VIEW [comp].[DateStartType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DateStartType5')
DROP VIEW [dbo].[DateStartType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DateStartType5')
DROP VIEW [comp].[DateStartType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline')
DROP VIEW [dbo].[Discipline]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline')
DROP VIEW [comp].[Discipline]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline_Audit')
DROP VIEW [dbo].[Discipline_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline_Audit')
DROP VIEW [comp].[Discipline_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline_Audit2')
DROP VIEW [dbo].[Discipline_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline_Audit2')
DROP VIEW [comp].[Discipline_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline_Audit3')
DROP VIEW [dbo].[Discipline_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline_Audit3')
DROP VIEW [comp].[Discipline_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline_Audit4')
DROP VIEW [dbo].[Discipline_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline_Audit4')
DROP VIEW [comp].[Discipline_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline_Audit5')
DROP VIEW [dbo].[Discipline_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline_Audit5')
DROP VIEW [comp].[Discipline_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline2')
DROP VIEW [dbo].[Discipline2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline2')
DROP VIEW [comp].[Discipline2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline3')
DROP VIEW [dbo].[Discipline3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline3')
DROP VIEW [comp].[Discipline3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline4')
DROP VIEW [dbo].[Discipline4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline4')
DROP VIEW [comp].[Discipline4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Discipline5')
DROP VIEW [dbo].[Discipline5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Discipline5')
DROP VIEW [comp].[Discipline5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDefault')
DROP VIEW [dbo].[DisciplineDefault]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDefault')
DROP VIEW [comp].[DisciplineDefault]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDefault2')
DROP VIEW [dbo].[DisciplineDefault2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDefault2')
DROP VIEW [comp].[DisciplineDefault2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDefault3')
DROP VIEW [dbo].[DisciplineDefault3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDefault3')
DROP VIEW [comp].[DisciplineDefault3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDefault4')
DROP VIEW [dbo].[DisciplineDefault4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDefault4')
DROP VIEW [comp].[DisciplineDefault4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDefault5')
DROP VIEW [dbo].[DisciplineDefault5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDefault5')
DROP VIEW [comp].[DisciplineDefault5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDetail')
DROP VIEW [dbo].[DisciplineDetail]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDetail')
DROP VIEW [comp].[DisciplineDetail]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDetail2')
DROP VIEW [dbo].[DisciplineDetail2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDetail2')
DROP VIEW [comp].[DisciplineDetail2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDetail3')
DROP VIEW [dbo].[DisciplineDetail3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDetail3')
DROP VIEW [comp].[DisciplineDetail3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDetail4')
DROP VIEW [dbo].[DisciplineDetail4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDetail4')
DROP VIEW [comp].[DisciplineDetail4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineDetail5')
DROP VIEW [dbo].[DisciplineDetail5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineDetail5')
DROP VIEW [comp].[DisciplineDetail5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineGroupType')
DROP VIEW [dbo].[DisciplineGroupType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineGroupType')
DROP VIEW [comp].[DisciplineGroupType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineGroupType2')
DROP VIEW [dbo].[DisciplineGroupType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineGroupType2')
DROP VIEW [comp].[DisciplineGroupType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineGroupType3')
DROP VIEW [dbo].[DisciplineGroupType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineGroupType3')
DROP VIEW [comp].[DisciplineGroupType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineGroupType4')
DROP VIEW [dbo].[DisciplineGroupType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineGroupType4')
DROP VIEW [comp].[DisciplineGroupType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineGroupType5')
DROP VIEW [dbo].[DisciplineGroupType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineGroupType5')
DROP VIEW [comp].[DisciplineGroupType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineType')
DROP VIEW [dbo].[DisciplineType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineType')
DROP VIEW [comp].[DisciplineType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineType2')
DROP VIEW [dbo].[DisciplineType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineType2')
DROP VIEW [comp].[DisciplineType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineType3')
DROP VIEW [dbo].[DisciplineType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineType3')
DROP VIEW [comp].[DisciplineType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineType4')
DROP VIEW [dbo].[DisciplineType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineType4')
DROP VIEW [comp].[DisciplineType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DisciplineType5')
DROP VIEW [dbo].[DisciplineType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DisciplineType5')
DROP VIEW [comp].[DisciplineType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction')
DROP VIEW [dbo].[DowntimeAction]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction')
DROP VIEW [comp].[DowntimeAction]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction_Audit')
DROP VIEW [dbo].[DowntimeAction_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction_Audit')
DROP VIEW [comp].[DowntimeAction_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction_Audit2')
DROP VIEW [dbo].[DowntimeAction_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction_Audit2')
DROP VIEW [comp].[DowntimeAction_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction_Audit3')
DROP VIEW [dbo].[DowntimeAction_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction_Audit3')
DROP VIEW [comp].[DowntimeAction_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction_Audit4')
DROP VIEW [dbo].[DowntimeAction_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction_Audit4')
DROP VIEW [comp].[DowntimeAction_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction_Audit5')
DROP VIEW [dbo].[DowntimeAction_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction_Audit5')
DROP VIEW [comp].[DowntimeAction_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction2')
DROP VIEW [dbo].[DowntimeAction2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction2')
DROP VIEW [comp].[DowntimeAction2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction3')
DROP VIEW [dbo].[DowntimeAction3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction3')
DROP VIEW [comp].[DowntimeAction3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction4')
DROP VIEW [dbo].[DowntimeAction4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction4')
DROP VIEW [comp].[DowntimeAction4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'DowntimeAction5')
DROP VIEW [dbo].[DowntimeAction5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'DowntimeAction5')
DROP VIEW [comp].[DowntimeAction5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate')
DROP VIEW [dbo].[GameDate]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate')
DROP VIEW [comp].[GameDate]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate_Audit')
DROP VIEW [dbo].[GameDate_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate_Audit')
DROP VIEW [comp].[GameDate_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate_Audit2')
DROP VIEW [dbo].[GameDate_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate_Audit2')
DROP VIEW [comp].[GameDate_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate_Audit3')
DROP VIEW [dbo].[GameDate_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate_Audit3')
DROP VIEW [comp].[GameDate_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate_Audit4')
DROP VIEW [dbo].[GameDate_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate_Audit4')
DROP VIEW [comp].[GameDate_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate_Audit5')
DROP VIEW [dbo].[GameDate_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate_Audit5')
DROP VIEW [comp].[GameDate_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate2')
DROP VIEW [dbo].[GameDate2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate2')
DROP VIEW [comp].[GameDate2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate3')
DROP VIEW [dbo].[GameDate3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate3')
DROP VIEW [comp].[GameDate3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate4')
DROP VIEW [dbo].[GameDate4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate4')
DROP VIEW [comp].[GameDate4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameDate5')
DROP VIEW [dbo].[GameDate5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameDate5')
DROP VIEW [comp].[GameDate5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation')
DROP VIEW [dbo].[GameLocation]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation')
DROP VIEW [comp].[GameLocation]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation_Audit')
DROP VIEW [dbo].[GameLocation_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation_Audit')
DROP VIEW [comp].[GameLocation_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation_Audit2')
DROP VIEW [dbo].[GameLocation_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation_Audit2')
DROP VIEW [comp].[GameLocation_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation_Audit3')
DROP VIEW [dbo].[GameLocation_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation_Audit3')
DROP VIEW [comp].[GameLocation_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation_Audit4')
DROP VIEW [dbo].[GameLocation_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation_Audit4')
DROP VIEW [comp].[GameLocation_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation_Audit5')
DROP VIEW [dbo].[GameLocation_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation_Audit5')
DROP VIEW [comp].[GameLocation_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation2')
DROP VIEW [dbo].[GameLocation2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation2')
DROP VIEW [comp].[GameLocation2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation3')
DROP VIEW [dbo].[GameLocation3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation3')
DROP VIEW [comp].[GameLocation3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation4')
DROP VIEW [dbo].[GameLocation4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation4')
DROP VIEW [comp].[GameLocation4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameLocation5')
DROP VIEW [dbo].[GameLocation5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameLocation5')
DROP VIEW [comp].[GameLocation5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor')
DROP VIEW [dbo].[GameRumor]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor')
DROP VIEW [comp].[GameRumor]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor_Audit')
DROP VIEW [dbo].[GameRumor_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor_Audit')
DROP VIEW [comp].[GameRumor_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor_Audit2')
DROP VIEW [dbo].[GameRumor_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor_Audit2')
DROP VIEW [comp].[GameRumor_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor_Audit3')
DROP VIEW [dbo].[GameRumor_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor_Audit3')
DROP VIEW [comp].[GameRumor_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor_Audit4')
DROP VIEW [dbo].[GameRumor_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor_Audit4')
DROP VIEW [comp].[GameRumor_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor_Audit5')
DROP VIEW [dbo].[GameRumor_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor_Audit5')
DROP VIEW [comp].[GameRumor_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor2')
DROP VIEW [dbo].[GameRumor2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor2')
DROP VIEW [comp].[GameRumor2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor3')
DROP VIEW [dbo].[GameRumor3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor3')
DROP VIEW [comp].[GameRumor3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor4')
DROP VIEW [dbo].[GameRumor4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor4')
DROP VIEW [comp].[GameRumor4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GameRumor5')
DROP VIEW [dbo].[GameRumor5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GameRumor5')
DROP VIEW [comp].[GameRumor5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GenerationType')
DROP VIEW [dbo].[GenerationType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GenerationType')
DROP VIEW [comp].[GenerationType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GenerationType2')
DROP VIEW [dbo].[GenerationType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GenerationType2')
DROP VIEW [comp].[GenerationType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GenerationType3')
DROP VIEW [dbo].[GenerationType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GenerationType3')
DROP VIEW [comp].[GenerationType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GenerationType4')
DROP VIEW [dbo].[GenerationType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GenerationType4')
DROP VIEW [comp].[GenerationType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GenerationType5')
DROP VIEW [dbo].[GenerationType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GenerationType5')
DROP VIEW [comp].[GenerationType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift')
DROP VIEW [dbo].[Gift]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift')
DROP VIEW [comp].[Gift]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift_Audit')
DROP VIEW [dbo].[Gift_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift_Audit')
DROP VIEW [comp].[Gift_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift_Audit2')
DROP VIEW [dbo].[Gift_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift_Audit2')
DROP VIEW [comp].[Gift_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift_Audit3')
DROP VIEW [dbo].[Gift_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift_Audit3')
DROP VIEW [comp].[Gift_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift_Audit4')
DROP VIEW [dbo].[Gift_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift_Audit4')
DROP VIEW [comp].[Gift_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift_Audit5')
DROP VIEW [dbo].[Gift_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift_Audit5')
DROP VIEW [comp].[Gift_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift2')
DROP VIEW [dbo].[Gift2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift2')
DROP VIEW [comp].[Gift2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift3')
DROP VIEW [dbo].[Gift3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift3')
DROP VIEW [comp].[Gift3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift4')
DROP VIEW [dbo].[Gift4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift4')
DROP VIEW [comp].[Gift4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Gift5')
DROP VIEW [dbo].[Gift5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Gift5')
DROP VIEW [comp].[Gift5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GiftType')
DROP VIEW [dbo].[GiftType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GiftType')
DROP VIEW [comp].[GiftType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GiftType2')
DROP VIEW [dbo].[GiftType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GiftType2')
DROP VIEW [comp].[GiftType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GiftType3')
DROP VIEW [dbo].[GiftType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GiftType3')
DROP VIEW [comp].[GiftType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GiftType4')
DROP VIEW [dbo].[GiftType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GiftType4')
DROP VIEW [comp].[GiftType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'GiftType5')
DROP VIEW [dbo].[GiftType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'GiftType5')
DROP VIEW [comp].[GiftType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'KithType')
DROP VIEW [dbo].[KithType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'KithType')
DROP VIEW [comp].[KithType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'KithType2')
DROP VIEW [dbo].[KithType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'KithType2')
DROP VIEW [comp].[KithType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'KithType3')
DROP VIEW [dbo].[KithType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'KithType3')
DROP VIEW [comp].[KithType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'KithType4')
DROP VIEW [dbo].[KithType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'KithType4')
DROP VIEW [comp].[KithType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'KithType5')
DROP VIEW [dbo].[KithType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'KithType5')
DROP VIEW [comp].[KithType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link')
DROP VIEW [dbo].[Link]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link')
DROP VIEW [comp].[Link]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link_Audit')
DROP VIEW [dbo].[Link_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link_Audit')
DROP VIEW [comp].[Link_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link_Audit2')
DROP VIEW [dbo].[Link_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link_Audit2')
DROP VIEW [comp].[Link_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link_Audit3')
DROP VIEW [dbo].[Link_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link_Audit3')
DROP VIEW [comp].[Link_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link_Audit4')
DROP VIEW [dbo].[Link_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link_Audit4')
DROP VIEW [comp].[Link_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link_Audit5')
DROP VIEW [dbo].[Link_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link_Audit5')
DROP VIEW [comp].[Link_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link2')
DROP VIEW [dbo].[Link2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link2')
DROP VIEW [comp].[Link2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link3')
DROP VIEW [dbo].[Link3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link3')
DROP VIEW [comp].[Link3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link4')
DROP VIEW [dbo].[Link4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link4')
DROP VIEW [comp].[Link4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Link5')
DROP VIEW [dbo].[Link5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Link5')
DROP VIEW [comp].[Link5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LinkType')
DROP VIEW [dbo].[LinkType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LinkType')
DROP VIEW [comp].[LinkType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LinkType2')
DROP VIEW [dbo].[LinkType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LinkType2')
DROP VIEW [comp].[LinkType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LinkType3')
DROP VIEW [dbo].[LinkType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LinkType3')
DROP VIEW [comp].[LinkType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LinkType4')
DROP VIEW [dbo].[LinkType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LinkType4')
DROP VIEW [comp].[LinkType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LinkType5')
DROP VIEW [dbo].[LinkType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LinkType5')
DROP VIEW [comp].[LinkType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LocationStateType')
DROP VIEW [dbo].[LocationStateType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LocationStateType')
DROP VIEW [comp].[LocationStateType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LocationStateType2')
DROP VIEW [dbo].[LocationStateType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LocationStateType2')
DROP VIEW [comp].[LocationStateType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LocationStateType3')
DROP VIEW [dbo].[LocationStateType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LocationStateType3')
DROP VIEW [comp].[LocationStateType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LocationStateType4')
DROP VIEW [dbo].[LocationStateType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LocationStateType4')
DROP VIEW [comp].[LocationStateType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'LocationStateType5')
DROP VIEW [dbo].[LocationStateType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'LocationStateType5')
DROP VIEW [comp].[LocationStateType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw')
DROP VIEW [dbo].[MeritFlaw]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw')
DROP VIEW [comp].[MeritFlaw]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw_Audit')
DROP VIEW [dbo].[MeritFlaw_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw_Audit')
DROP VIEW [comp].[MeritFlaw_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw_Audit2')
DROP VIEW [dbo].[MeritFlaw_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw_Audit2')
DROP VIEW [comp].[MeritFlaw_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw_Audit3')
DROP VIEW [dbo].[MeritFlaw_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw_Audit3')
DROP VIEW [comp].[MeritFlaw_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw_Audit4')
DROP VIEW [dbo].[MeritFlaw_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw_Audit4')
DROP VIEW [comp].[MeritFlaw_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw_Audit5')
DROP VIEW [dbo].[MeritFlaw_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw_Audit5')
DROP VIEW [comp].[MeritFlaw_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw2')
DROP VIEW [dbo].[MeritFlaw2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw2')
DROP VIEW [comp].[MeritFlaw2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw3')
DROP VIEW [dbo].[MeritFlaw3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw3')
DROP VIEW [comp].[MeritFlaw3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw4')
DROP VIEW [dbo].[MeritFlaw4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw4')
DROP VIEW [comp].[MeritFlaw4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlaw5')
DROP VIEW [dbo].[MeritFlaw5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlaw5')
DROP VIEW [comp].[MeritFlaw5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawGroupType')
DROP VIEW [dbo].[MeritFlawGroupType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawGroupType')
DROP VIEW [comp].[MeritFlawGroupType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawGroupType2')
DROP VIEW [dbo].[MeritFlawGroupType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawGroupType2')
DROP VIEW [comp].[MeritFlawGroupType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawGroupType3')
DROP VIEW [dbo].[MeritFlawGroupType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawGroupType3')
DROP VIEW [comp].[MeritFlawGroupType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawGroupType4')
DROP VIEW [dbo].[MeritFlawGroupType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawGroupType4')
DROP VIEW [comp].[MeritFlawGroupType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawGroupType5')
DROP VIEW [dbo].[MeritFlawGroupType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawGroupType5')
DROP VIEW [comp].[MeritFlawGroupType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawType')
DROP VIEW [dbo].[MeritFlawType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawType')
DROP VIEW [comp].[MeritFlawType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawType2')
DROP VIEW [dbo].[MeritFlawType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawType2')
DROP VIEW [comp].[MeritFlawType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawType3')
DROP VIEW [dbo].[MeritFlawType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawType3')
DROP VIEW [comp].[MeritFlawType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawType4')
DROP VIEW [dbo].[MeritFlawType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawType4')
DROP VIEW [comp].[MeritFlawType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'MeritFlawType5')
DROP VIEW [dbo].[MeritFlawType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'MeritFlawType5')
DROP VIEW [comp].[MeritFlawType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip')
DROP VIEW [dbo].[PlayerPip]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip')
DROP VIEW [comp].[PlayerPip]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip_Audit')
DROP VIEW [dbo].[PlayerPip_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip_Audit')
DROP VIEW [comp].[PlayerPip_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip_Audit2')
DROP VIEW [dbo].[PlayerPip_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip_Audit2')
DROP VIEW [comp].[PlayerPip_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip_Audit3')
DROP VIEW [dbo].[PlayerPip_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip_Audit3')
DROP VIEW [comp].[PlayerPip_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip_Audit4')
DROP VIEW [dbo].[PlayerPip_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip_Audit4')
DROP VIEW [comp].[PlayerPip_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip_Audit5')
DROP VIEW [dbo].[PlayerPip_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip_Audit5')
DROP VIEW [comp].[PlayerPip_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip2')
DROP VIEW [dbo].[PlayerPip2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip2')
DROP VIEW [comp].[PlayerPip2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip3')
DROP VIEW [dbo].[PlayerPip3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip3')
DROP VIEW [comp].[PlayerPip3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip4')
DROP VIEW [dbo].[PlayerPip4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip4')
DROP VIEW [comp].[PlayerPip4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerPip5')
DROP VIEW [dbo].[PlayerPip5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerPip5')
DROP VIEW [comp].[PlayerPip5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp')
DROP VIEW [dbo].[PlayerXp]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp')
DROP VIEW [comp].[PlayerXp]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp_Audit')
DROP VIEW [dbo].[PlayerXp_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp_Audit')
DROP VIEW [comp].[PlayerXp_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp_Audit2')
DROP VIEW [dbo].[PlayerXp_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp_Audit2')
DROP VIEW [comp].[PlayerXp_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp_Audit3')
DROP VIEW [dbo].[PlayerXp_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp_Audit3')
DROP VIEW [comp].[PlayerXp_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp_Audit4')
DROP VIEW [dbo].[PlayerXp_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp_Audit4')
DROP VIEW [comp].[PlayerXp_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp_Audit5')
DROP VIEW [dbo].[PlayerXp_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp_Audit5')
DROP VIEW [comp].[PlayerXp_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp2')
DROP VIEW [dbo].[PlayerXp2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp2')
DROP VIEW [comp].[PlayerXp2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp3')
DROP VIEW [dbo].[PlayerXp3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp3')
DROP VIEW [comp].[PlayerXp3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp4')
DROP VIEW [dbo].[PlayerXp4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp4')
DROP VIEW [comp].[PlayerXp4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'PlayerXp5')
DROP VIEW [dbo].[PlayerXp5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'PlayerXp5')
DROP VIEW [comp].[PlayerXp5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm')
DROP VIEW [dbo].[Realm]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm')
DROP VIEW [comp].[Realm]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm_Audit')
DROP VIEW [dbo].[Realm_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm_Audit')
DROP VIEW [comp].[Realm_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm_Audit2')
DROP VIEW [dbo].[Realm_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm_Audit2')
DROP VIEW [comp].[Realm_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm_Audit3')
DROP VIEW [dbo].[Realm_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm_Audit3')
DROP VIEW [comp].[Realm_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm_Audit4')
DROP VIEW [dbo].[Realm_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm_Audit4')
DROP VIEW [comp].[Realm_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm_Audit5')
DROP VIEW [dbo].[Realm_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm_Audit5')
DROP VIEW [comp].[Realm_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm2')
DROP VIEW [dbo].[Realm2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm2')
DROP VIEW [comp].[Realm2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm3')
DROP VIEW [dbo].[Realm3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm3')
DROP VIEW [comp].[Realm3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm4')
DROP VIEW [dbo].[Realm4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm4')
DROP VIEW [comp].[Realm4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Realm5')
DROP VIEW [dbo].[Realm5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Realm5')
DROP VIEW [comp].[Realm5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RealmType')
DROP VIEW [dbo].[RealmType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RealmType')
DROP VIEW [comp].[RealmType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RealmType2')
DROP VIEW [dbo].[RealmType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RealmType2')
DROP VIEW [comp].[RealmType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RealmType3')
DROP VIEW [dbo].[RealmType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RealmType3')
DROP VIEW [comp].[RealmType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RealmType4')
DROP VIEW [dbo].[RealmType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RealmType4')
DROP VIEW [comp].[RealmType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RealmType5')
DROP VIEW [dbo].[RealmType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RealmType5')
DROP VIEW [comp].[RealmType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual')
DROP VIEW [dbo].[Ritual]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual')
DROP VIEW [comp].[Ritual]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual_Audit')
DROP VIEW [dbo].[Ritual_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual_Audit')
DROP VIEW [comp].[Ritual_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual_Audit2')
DROP VIEW [dbo].[Ritual_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual_Audit2')
DROP VIEW [comp].[Ritual_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual_Audit3')
DROP VIEW [dbo].[Ritual_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual_Audit3')
DROP VIEW [comp].[Ritual_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual_Audit4')
DROP VIEW [dbo].[Ritual_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual_Audit4')
DROP VIEW [comp].[Ritual_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual_Audit5')
DROP VIEW [dbo].[Ritual_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual_Audit5')
DROP VIEW [comp].[Ritual_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual2')
DROP VIEW [dbo].[Ritual2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual2')
DROP VIEW [comp].[Ritual2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual3')
DROP VIEW [dbo].[Ritual3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual3')
DROP VIEW [comp].[Ritual3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual4')
DROP VIEW [dbo].[Ritual4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual4')
DROP VIEW [comp].[Ritual4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Ritual5')
DROP VIEW [dbo].[Ritual5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Ritual5')
DROP VIEW [comp].[Ritual5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualGroupType')
DROP VIEW [dbo].[RitualGroupType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualGroupType')
DROP VIEW [comp].[RitualGroupType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualGroupType2')
DROP VIEW [dbo].[RitualGroupType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualGroupType2')
DROP VIEW [comp].[RitualGroupType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualGroupType3')
DROP VIEW [dbo].[RitualGroupType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualGroupType3')
DROP VIEW [comp].[RitualGroupType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualGroupType4')
DROP VIEW [dbo].[RitualGroupType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualGroupType4')
DROP VIEW [comp].[RitualGroupType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualGroupType5')
DROP VIEW [dbo].[RitualGroupType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualGroupType5')
DROP VIEW [comp].[RitualGroupType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualType')
DROP VIEW [dbo].[RitualType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualType')
DROP VIEW [comp].[RitualType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualType2')
DROP VIEW [dbo].[RitualType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualType2')
DROP VIEW [comp].[RitualType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualType3')
DROP VIEW [dbo].[RitualType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualType3')
DROP VIEW [comp].[RitualType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualType4')
DROP VIEW [dbo].[RitualType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualType4')
DROP VIEW [comp].[RitualType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'RitualType5')
DROP VIEW [dbo].[RitualType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'RitualType5')
DROP VIEW [comp].[RitualType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SectType')
DROP VIEW [dbo].[SectType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SectType')
DROP VIEW [comp].[SectType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SectType2')
DROP VIEW [dbo].[SectType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SectType2')
DROP VIEW [comp].[SectType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SectType3')
DROP VIEW [dbo].[SectType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SectType3')
DROP VIEW [comp].[SectType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SectType4')
DROP VIEW [dbo].[SectType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SectType4')
DROP VIEW [comp].[SectType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SectType5')
DROP VIEW [dbo].[SectType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SectType5')
DROP VIEW [comp].[SectType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill')
DROP VIEW [dbo].[Skill]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill')
DROP VIEW [comp].[Skill]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill_Audit')
DROP VIEW [dbo].[Skill_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill_Audit')
DROP VIEW [comp].[Skill_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill_Audit2')
DROP VIEW [dbo].[Skill_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill_Audit2')
DROP VIEW [comp].[Skill_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill_Audit3')
DROP VIEW [dbo].[Skill_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill_Audit3')
DROP VIEW [comp].[Skill_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill_Audit4')
DROP VIEW [dbo].[Skill_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill_Audit4')
DROP VIEW [comp].[Skill_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill_Audit5')
DROP VIEW [dbo].[Skill_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill_Audit5')
DROP VIEW [comp].[Skill_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill2')
DROP VIEW [dbo].[Skill2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill2')
DROP VIEW [comp].[Skill2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill3')
DROP VIEW [dbo].[Skill3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill3')
DROP VIEW [comp].[Skill3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill4')
DROP VIEW [dbo].[Skill4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill4')
DROP VIEW [comp].[Skill4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Skill5')
DROP VIEW [dbo].[Skill5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Skill5')
DROP VIEW [comp].[Skill5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SkillType')
DROP VIEW [dbo].[SkillType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SkillType')
DROP VIEW [comp].[SkillType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SkillType2')
DROP VIEW [dbo].[SkillType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SkillType2')
DROP VIEW [comp].[SkillType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SkillType3')
DROP VIEW [dbo].[SkillType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SkillType3')
DROP VIEW [comp].[SkillType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SkillType4')
DROP VIEW [dbo].[SkillType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SkillType4')
DROP VIEW [comp].[SkillType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SkillType5')
DROP VIEW [dbo].[SkillType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SkillType5')
DROP VIEW [comp].[SkillType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SqlOnAirTime')
DROP VIEW [dbo].[SqlOnAirTime]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SqlOnAirTime')
DROP VIEW [comp].[SqlOnAirTime]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SqlOnAirTime2')
DROP VIEW [dbo].[SqlOnAirTime2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SqlOnAirTime2')
DROP VIEW [comp].[SqlOnAirTime2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SqlOnAirTime3')
DROP VIEW [dbo].[SqlOnAirTime3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SqlOnAirTime3')
DROP VIEW [comp].[SqlOnAirTime3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SqlOnAirTime4')
DROP VIEW [dbo].[SqlOnAirTime4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SqlOnAirTime4')
DROP VIEW [comp].[SqlOnAirTime4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'SqlOnAirTime5')
DROP VIEW [dbo].[SqlOnAirTime5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'SqlOnAirTime5')
DROP VIEW [comp].[SqlOnAirTime5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'StorytellerType')
DROP VIEW [dbo].[StorytellerType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'StorytellerType')
DROP VIEW [comp].[StorytellerType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'StorytellerType2')
DROP VIEW [dbo].[StorytellerType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'StorytellerType2')
DROP VIEW [comp].[StorytellerType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'StorytellerType3')
DROP VIEW [dbo].[StorytellerType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'StorytellerType3')
DROP VIEW [comp].[StorytellerType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'StorytellerType4')
DROP VIEW [dbo].[StorytellerType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'StorytellerType4')
DROP VIEW [comp].[StorytellerType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'StorytellerType5')
DROP VIEW [dbo].[StorytellerType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'StorytellerType5')
DROP VIEW [comp].[StorytellerType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique')
DROP VIEW [dbo].[Technique]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique')
DROP VIEW [comp].[Technique]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique_Audit')
DROP VIEW [dbo].[Technique_Audit]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique_Audit')
DROP VIEW [comp].[Technique_Audit]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique_Audit2')
DROP VIEW [dbo].[Technique_Audit2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique_Audit2')
DROP VIEW [comp].[Technique_Audit2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique_Audit3')
DROP VIEW [dbo].[Technique_Audit3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique_Audit3')
DROP VIEW [comp].[Technique_Audit3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique_Audit4')
DROP VIEW [dbo].[Technique_Audit4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique_Audit4')
DROP VIEW [comp].[Technique_Audit4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique_Audit5')
DROP VIEW [dbo].[Technique_Audit5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique_Audit5')
DROP VIEW [comp].[Technique_Audit5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique2')
DROP VIEW [dbo].[Technique2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique2')
DROP VIEW [comp].[Technique2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique3')
DROP VIEW [dbo].[Technique3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique3')
DROP VIEW [comp].[Technique3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique4')
DROP VIEW [dbo].[Technique4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique4')
DROP VIEW [comp].[Technique4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'Technique5')
DROP VIEW [dbo].[Technique5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'Technique5')
DROP VIEW [comp].[Technique5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TechniqueType')
DROP VIEW [dbo].[TechniqueType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TechniqueType')
DROP VIEW [comp].[TechniqueType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TechniqueType2')
DROP VIEW [dbo].[TechniqueType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TechniqueType2')
DROP VIEW [comp].[TechniqueType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TechniqueType3')
DROP VIEW [dbo].[TechniqueType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TechniqueType3')
DROP VIEW [comp].[TechniqueType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TechniqueType4')
DROP VIEW [dbo].[TechniqueType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TechniqueType4')
DROP VIEW [comp].[TechniqueType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TechniqueType5')
DROP VIEW [dbo].[TechniqueType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TechniqueType5')
DROP VIEW [comp].[TechniqueType5]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TribeType')
DROP VIEW [dbo].[TribeType]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TribeType')
DROP VIEW [comp].[TribeType]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TribeType2')
DROP VIEW [dbo].[TribeType2]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TribeType2')
DROP VIEW [comp].[TribeType2]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TribeType3')
DROP VIEW [dbo].[TribeType3]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TribeType3')
DROP VIEW [comp].[TribeType3]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TribeType4')
DROP VIEW [dbo].[TribeType4]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TribeType4')
DROP VIEW [comp].[TribeType4]
GO          

  
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'data' and v.name = 'TribeType5')
DROP VIEW [dbo].[TribeType5]
GO
IF EXISTS (select * from [SecondActV3_SQLonAir].sys.views v join sys.schemas s on v.schema_id = s.schema_id where s.name = 'comp' and v.name = 'TribeType5')
DROP VIEW [comp].[TribeType5]
GO          

            
-- Drop calculated fields
USE [SecondActV3]
GO


  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    
IF EXISTS (select * from [SecondActV3].sys.columns where name = N'ArchetypeName' AND Object_ID = Object_ID(N'Character'))
ALTER TABLE [dbo].[Character] DROP COLUMN [ArchetypeName]
GO
    
IF EXISTS (select * from [SecondActV3].sys.columns where name = N'EliteInfluences' AND Object_ID = Object_ID(N'Character'))
ALTER TABLE [dbo].[Character] DROP COLUMN [EliteInfluences]
GO
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    

  
    


            