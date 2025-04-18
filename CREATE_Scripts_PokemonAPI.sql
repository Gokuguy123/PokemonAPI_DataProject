USE [PokemonAPI]
GO
/****** Object:  Table [dbo].[Evolution]    Script Date: 4/12/2025 8:35:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evolution](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SpeciesName] [varchar](50) NULL,
	[IsBaby] [varchar](5) NULL,
	[EvolvesTo] [varchar](50) NULL,
	[Trigger] [varchar](50) NULL,
	[Gender] [varchar](10) NULL,
	[HeldItem] [varchar](20) NULL,
	[Item] [varchar](20) NULL,
	[KnownMove] [varchar](20) NULL,
	[KnownMoveType] [varchar](20) NULL,
	[Location] [varchar](50) NULL,
	[MinAffection] [int] NULL,
	[MinBeauty] [int] NULL,
	[MinHappiness] [int] NULL,
	[MinLevel] [int] NULL,
	[NeedsOverworldRain] [varchar](5) NULL,
	[PartySpecies] [varchar](50) NULL,
	[PartyType] [varchar](20) NULL,
	[RelativePhysicalStats] [int] NULL,
	[TimeOfDay] [varchar](20) NULL,
	[TradeSpecies] [varchar](50) NULL,
	[TurnUpsideDown] [varchar](5) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK__Evolutio__3214EC278C343763] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moves]    Script Date: 4/12/2025 8:35:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moves](
	[MoveID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](20) NULL,
	[Accuracy] [int] NULL,
	[DamageClass] [varchar](10) NULL,
	[PP] [int] NULL,
	[EffectChance] [int] NULL,
	[Priority] [int] NULL,
	[Power] [int] NULL,
	[Target] [varchar](50) NULL,
	[StatChangeAtk] [int] NULL,
	[StatChangeDef] [int] NULL,
	[StatChangeSpAtk] [int] NULL,
	[StatChangeSpDef] [int] NULL,
	[StatChangeSpd] [int] NULL,
	[StatChangeAcc] [int] NULL,
	[StatChangeEvas] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK__Moves__A931A43CB475378B] PRIMARY KEY CLUSTERED 
(
	[MoveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PokeDex]    Script Date: 4/12/2025 8:35:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokeDex](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](300) NULL,
	[Region] [varchar](50) NULL,
	[IsMainSeries] [varchar](5) NULL,
	[PkmnEntryNumber] [int] NULL,
	[PkmnName] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PokemonBaseAttributes]    Script Date: 4/12/2025 8:35:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonBaseAttributes](
	[PkmnID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Type1] [varchar](20) NULL,
	[Type2] [varchar](20) NULL,
	[Ability1] [varchar](20) NULL,
	[Ability2] [varchar](20) NULL,
	[AbilityHidden] [varchar](20) NULL,
	[Height] [int] NULL,
	[Weight] [int] NULL,
	[BaseExperience] [int] NULL,
	[BaseHP] [int] NULL,
	[BaseAtk] [int] NULL,
	[BaseDef] [int] NULL,
	[BaseSpAtk] [int] NULL,
	[BaseSpDef] [int] NULL,
	[BaseSpd] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PokemonForms]    Script Date: 4/12/2025 8:35:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonForms](
	[PkmnID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[BaseName] [varchar](50) NULL,
	[FormName] [varchar](50) NULL,
	[FormOrder] [int] NULL,
	[IsDefault] [varchar](5) NULL,
	[IsBattleOnly] [varchar](5) NULL,
	[IsMega] [varchar](5) NULL,
	[Type1] [varchar](20) NULL,
	[Type2] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK__PokemonF__DE222ABC95E9B1E6] PRIMARY KEY CLUSTERED 
(
	[PkmnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PokemonLearnableMoves]    Script Date: 4/12/2025 8:35:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonLearnableMoves](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[PkmnId] [int] NULL,
	[MoveName] [varchar](50) NULL,
	[LevelLearnedAt] [int] NULL,
	[MoveLearnMethod] [varchar](50) NULL,
	[VersionGroup] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 4/12/2025 8:35:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NULL,
	[OpposingType] [varchar](20) NULL,
	[DamageRelation] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK__Types__3214EC272B5731BD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  StoredProcedure [dbo].[Load_Evolution-Chain]    Script Date: 4/12/2025 8:36:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Garren Davis
-- Create date: 3/14/2025
-- Description:	Loops through Evolution JSON files and imports results into existing tables.
-- =============================================

--  EXEC PokemonAPI.[dbo].[Load_Evolution-Chain]

CREATE PROCEDURE [dbo].[Load_Evolution-Chain]
	@JSONFile varchar(300) = NULL,
	@TruncateTable bit = 0
AS
BEGIN
	
	DECLARE @PkmnData VARCHAR(MAX)
	DECLARE @SQLCommand NVARCHAR(MAX) = 'SELECT @JSONData = BulkColumn FROM OPENROWSET(BULK ''' + @JSONFile + ''',SINGLE_NCLOB, CODEPAGE = ''65001'') JSON'
	DECLARE @Params NVARCHAR(MAX) = '@JSONData VARCHAR(MAX) OUTPUT'

	EXEC sp_executesql @SQLCommand, @Params, @JSONData=@PkmnData OUTPUT

	IF (ISJSON(@PkmnData) = 1)
		BEGIN

			/***Forms Data***/
			BEGIN TRANSACTION BT WITH MARK 'Insert Forms Data'

			IF (@TruncateTable = 1) TRUNCATE TABLE PokemonAPI.dbo.Evolution
			INSERT INTO PokemonAPI.dbo.Evolution (SpeciesName, IsBaby, EvolvesTo, [Trigger], Gender, HeldItem, 
				Item, KnownMove, KnownMoveType, Location, MinAffection, MinBeauty, MinHappiness, MinLevel,
				NeedsOverworldRain, PartySpecies, PartyType, RelativePhysicalStats, TimeOfDay, TradeSpecies,
				TurnUpsideDown, CreatedDate, CreatedBy)
			SELECT DISTINCT --JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.chain.species.name') AS SpeciesName,
				JSON_VALUE(@PkmnData,'$.chain.is_baby') AS IsBaby,
				JSON_VALUE(E.VALUE,'$.species.name') AS EvolvesTo,
				JSON_VALUE(D.VALUE,'$.trigger.name') AS [Trigger],
				JSON_VALUE(D.VALUE,'$.gender') AS Gender,
				JSON_VALUE(D.VALUE,'$.held_item.name') AS HeldItem,
				JSON_VALUE(D.VALUE,'$.item.name') AS Item,
				JSON_VALUE(D.VALUE,'$.known_move.name') AS KnownMove,
				JSON_VALUE(D.VALUE,'$.known_move_type.name') AS KnownMoveType,
				JSON_VALUE(D.VALUE,'$.location.name') AS Location,
				JSON_VALUE(D.VALUE,'$.min_affection') AS MinAffection,
				JSON_VALUE(D.VALUE,'$.min_beauty') AS MinBeauty,
				JSON_VALUE(D.VALUE,'$.min_happiness') AS MinHappiness,
				JSON_VALUE(D.VALUE,'$.min_level') AS MinLevel,
				JSON_VALUE(D.VALUE,'$.needs_overworld_rain') AS NeedsOverworldRain,
				JSON_VALUE(D.VALUE,'$.party_species.name') AS PartySpecies,
				JSON_VALUE(D.VALUE,'$.party_type.name') AS PartyType,
				JSON_VALUE(D.VALUE,'$.relative_physical_stats') AS RelativePhysicalStats,
				JSON_VALUE(D.VALUE,'$.time_of_day') AS TimeOfDay,
				JSON_VALUE(D.VALUE,'$.trade_species.name') AS TradeSpecies,
				JSON_VALUE(D.VALUE,'$.turn_upside_down') AS TurnUpsideDown,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData,'$') P
			CROSS APPLY OPENJSON(@PkmnData,'$.chain.evolves_to') E
			CROSS APPLY OPENJSON(E.VALUE,'$.evolution_details') D
			
			INSERT INTO PokemonAPI.dbo.Evolution (SpeciesName, IsBaby, EvolvesTo, [Trigger], Gender, HeldItem, 
				Item, KnownMove, KnownMoveType, Location, MinAffection, MinBeauty, MinHappiness, MinLevel,
				NeedsOverworldRain, PartySpecies, PartyType, RelativePhysicalStats, TimeOfDay, TradeSpecies,
				TurnUpsideDown, CreatedDate, CreatedBy)
			SELECT DISTINCT --JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(P.VALUE,'$.species.name') AS SpeciesName,
				JSON_VALUE(P.VALUE,'$.is_baby') AS IsBaby,
				JSON_VALUE(E.VALUE,'$.species.name') AS EvolvesTo,
				JSON_VALUE(D.VALUE,'$.trigger.name') AS [Trigger],
				JSON_VALUE(D.VALUE,'$.gender') AS Gender,
				JSON_VALUE(D.VALUE,'$.held_item.name') AS HeldItem,
				JSON_VALUE(D.VALUE,'$.item.name') AS Item,
				JSON_VALUE(D.VALUE,'$.known_move.name') AS KnownMove,
				JSON_VALUE(D.VALUE,'$.known_move_type.name') AS KnownMoveType,
				JSON_VALUE(D.VALUE,'$.location.name') AS Location,
				JSON_VALUE(D.VALUE,'$.min_affection') AS MinAffection,
				JSON_VALUE(D.VALUE,'$.min_beauty') AS MinBeauty,
				JSON_VALUE(D.VALUE,'$.min_happiness') AS MinHappiness,
				JSON_VALUE(D.VALUE,'$.min_level') AS MinLevel,
				JSON_VALUE(D.VALUE,'$.needs_overworld_rain') AS NeedsOverworldRain,
				JSON_VALUE(D.VALUE,'$.party_species.name') AS PartySpecies,
				JSON_VALUE(D.VALUE,'$.party_type.name') AS PartyType,
				JSON_VALUE(D.VALUE,'$.relative_physical_state') AS RelativePhysicalStats,
				JSON_VALUE(D.VALUE,'$.time_of_day') AS TimeOfDay,
				JSON_VALUE(D.VALUE,'$.trade_species.name') AS TradeSpecies,
				JSON_VALUE(D.VALUE,'$.turn_upside_down') AS TurnUpsideDown,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData,'$.chain.evolves_to') P
			CROSS APPLY OPENJSON(P.VALUE,'$.evolves_to') E
			CROSS APPLY OPENJSON(E.VALUE,'$.evolution_details') D

			COMMIT TRANSACTION BT
		END
	ELSE
		BEGIN
			PRINT 'Invalid JSON Imported'
		END

END
GO
/****** Object:  StoredProcedure [dbo].[Load_Move]    Script Date: 4/12/2025 8:36:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Garren Davis
-- Create date: 3/3/2025
-- Description:	Loops through Moves JSON files and imports results into existing tables.
-- =============================================

--  EXEC PokemonAPI.dbo.Load_Move

CREATE PROCEDURE [dbo].[Load_Move]
	@JSONFile varchar(300) = NULL,
	@TruncateTable bit = 0
AS
BEGIN
	
	DECLARE @PkmnData VARCHAR(MAX)
	DECLARE @SQLCommand NVARCHAR(MAX) = 'SELECT @JSONData = BulkColumn FROM OPENROWSET(BULK ''' + @JSONFile + ''', SINGLE_NCLOB, CODEPAGE = ''65001'') JSON'
	DECLARE @Params NVARCHAR(MAX) = '@JSONData VARCHAR(MAX) OUTPUT'

	EXEC sp_executesql @SQLCommand, @Params, @JSONData=@PkmnData OUTPUT

	IF (ISJSON(@PkmnData) = 1)
		BEGIN

			/***Basic Atributes***/
			BEGIN TRANSACTION BT WITH MARK 'Insert Moves Data'

			IF (@TruncateTable = 1) TRUNCATE TABLE PokemonAPI.dbo.Moves
			INSERT INTO PokemonAPI.dbo.Moves (Name, Type, Accuracy, DamageClass, PP, EffectChance, Priority, Power, 
				Target, StatChangeAtk, StatChangeDef, StatChangeSpAtk, StatChangeSpDef, StatChangeSpd, StatChangeAcc, StatChangeEvas,
				CreatedDate, CreatedBy)
			SELECT DISTINCT JSON_VALUE(@PkmnData,'$.name') AS Name, 
				JSON_VALUE(@PkmnData,'$.type.name') AS Type, 
				JSON_VALUE(@PkmnData,'$.accuracy') AS Accuracy, 
				JSON_VALUE(@PkmnData,'$.damage_class.name') AS DamageClass, 
				JSON_VALUE(@PkmnData,'$.pp') AS PP, 
				JSON_VALUE(@PkmnData,'$.effect_chance') AS EffectChance, 
				JSON_VALUE(@PkmnData,'$.priority') AS Priority, 
				JSON_VALUE(@PkmnData,'$.power') AS Power, 
				JSON_VALUE(@PkmnData,'$.target.name') AS Target, 
				CASE WHEN STAT.Stat = 'attack' THEN STAT.StatChange ELSE 0 END AS StatChangeAtk,
				CASE WHEN STAT.Stat = 'defense' THEN STAT.StatChange ELSE 0 END AS StatChangeDef,
				CASE WHEN STAT.Stat = 'special attack' THEN STAT.StatChange ELSE 0 END AS StatChangeSpAtk,
				CASE WHEN STAT.Stat = 'special defense' THEN STAT.StatChange ELSE 0 END AS StatChangeSpDef,
				CASE WHEN STAT.Stat = 'speed' THEN STAT.StatChange ELSE 0 END AS StatChangeSpd,
				CASE WHEN STAT.Stat = 'accuracy' THEN STAT.StatChange ELSE 0 END AS StatChangeAcc,
				CASE WHEN STAT.Stat = 'evasion' THEN STAT.StatChange ELSE 0 END AS StatChangeEvas,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData) P
			CROSS APPLY (
				SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[0].change') AS StatChange,
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[0].name') AS Stat
				FROM OPENJSON(@PkmnData) P
				UNION ALL
				SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[1].change') AS StatChange,
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[1].name') AS Stat
				FROM OPENJSON(@PkmnData) P
				UNION ALL
				SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[2].change') AS StatChange,
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[2].name') AS Stat
				FROM OPENJSON(@PkmnData) P
				UNION ALL
				SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[3].change') AS StatChange,
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[3].name') AS Stat
				FROM OPENJSON(@PkmnData) P
				UNION ALL
				SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[4].change') AS StatChange,
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[4].name') AS Stat
				FROM OPENJSON(@PkmnData) P
				UNION ALL
				SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[5].change') AS StatChange,
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[5].name') AS Stat
				FROM OPENJSON(@PkmnData) P
				UNION ALL
				SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[6].change') AS StatChange,
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[6].name') AS Stat
				FROM OPENJSON(@PkmnData) P
				UNION ALL
				SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[7].change') AS StatChange,
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.stat_changes'),'$[7].name') AS Stat
				FROM OPENJSON(@PkmnData) P
			) STAT
				
			COMMIT TRANSACTION BT
		END
	ELSE
		BEGIN
			PRINT 'Invalid JSON Imported'
		END

END
GO
/****** Object:  StoredProcedure [dbo].[Load_Pokedex]    Script Date: 4/12/2025 8:36:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Garren Davis
-- Create date: 2/15/2025
-- Description:	Loops through Pokemon JSON files and imports results into existing tables.
-- =============================================

--  EXEC PokemonAPI.dbo.Load_Pokedex

CREATE PROCEDURE [dbo].[Load_Pokedex]
	@JSONFile varchar(300) = 'C:\PokemonFiles\Pokedex\1_Pokedex_033025-163033.json',--NULL
	@TruncateTable bit = 0
AS
BEGIN
	
	DECLARE @PkmnData VARCHAR(MAX)
	DECLARE @SQLCommand NVARCHAR(MAX) = 'SELECT @JSONData = BulkColumn FROM OPENROWSET(BULK ''' + @JSONFile + ''', SINGLE_NCLOB, CODEPAGE = ''65001'') JSON'
	DECLARE @Params NVARCHAR(MAX) = '@JSONData VARCHAR(MAX) OUTPUT'

	EXEC sp_executesql @SQLCommand, @Params, @JSONData=@PkmnData OUTPUT

	IF (ISJSON(@PkmnData) = 1)
		BEGIN

			DROP TABLE IF EXISTS #Temp_Pokedex

			/***Pokedex Entries (multiple languages)***/
			BEGIN TRANSACTION BT WITH MARK 'Insert PokeDex Entries'
			SELECT DISTINCT JSON_VALUE(@PkmnData,'$.id') AS ID,
				JSON_VALUE(N.VALUE,'$.language.name') AS NameLanguage,
				JSON_VALUE(N.VALUE,'$.name') AS Name, 
				JSON_VALUE(D.VALUE,'$.language.name') AS DescLanguage,
				JSON_VALUE(D.VALUE,'$.description') AS Description,
				JSON_VALUE(@PkmnData,'$.region.name') AS Region,
				JSON_VALUE(@PkmnData,'$.is_main_series') AS IsMainSeries,
				JSON_VALUE(PE.VALUE,'$.entry_number') AS PkmnEntryNumber,
				JSON_VALUE(PE.VALUE,'$.pokemon_species.name') AS PkmnName,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			INTO #Temp_Pokedex
			FROM OPENJSON(@PkmnData) P
			CROSS APPLY OPENJSON(@PkmnData,'$.names') N
			CROSS APPLY OPENJSON(@PkmnData,'$.descriptions') D
			CROSS APPLY OPENJSON(@PkmnData,'$.pokemon_entries') PE

			IF (@TruncateTable = 1) TRUNCATE TABLE PokemonAPI.dbo.PokeDex

			INSERT INTO PokemonAPI.dbo.PokeDex (ID, Name, Description, Region, IsMainSeries, PkmnEntryNumber, PkmnName, CreatedDate, CreatedBy)
			SELECT ID, Name, Description, Region, IsMainSeries, PkmnEntryNumber, PkmnName, CreatedDate, CreatedBy
			FROM #Temp_Pokedex
			WHERE NameLanguage = 'en'
				AND DescLanguage = 'en'

			DROP TABLE IF EXISTS #Temp_Pokedex

			COMMIT TRANSACTION BT

		END
	ELSE
		BEGIN
			PRINT 'Invalid JSON Imported'
		END

END
GO
/****** Object:  StoredProcedure [dbo].[Load_Pokemon]    Script Date: 4/12/2025 8:36:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Garren Davis
-- Create date: 2/15/2025
-- Description:	Loops through Pokemon JSON files and imports results into existing tables.
-- =============================================

--  EXEC PokemonAPI.dbo.Load_Pokemon

CREATE PROCEDURE [dbo].[Load_Pokemon]
	@JSONFile varchar(300) = NULL,
	@TruncateTable bit = 0
AS
BEGIN
	
	DECLARE @PkmnData VARCHAR(MAX)
	DECLARE @SQLCommand NVARCHAR(MAX) = 'SELECT @JSONData = BulkColumn FROM OPENROWSET(BULK ''' + @JSONFile + ''', SINGLE_NCLOB, CODEPAGE = ''65001'') JSON'
	DECLARE @Params NVARCHAR(MAX) = '@JSONData VARCHAR(MAX) OUTPUT'

	EXEC sp_executesql @SQLCommand, @Params, @JSONData=@PkmnData OUTPUT

	IF (ISJSON(@PkmnData) = 1)
		BEGIN

			/***Basic Atributes***/
			BEGIN TRANSACTION BT WITH MARK 'Insert Base Attributes'

			IF (@TruncateTable = 1) TRUNCATE TABLE PokemonAPI.dbo.PokemonBaseAttributes
			INSERT INTO PokemonAPI.dbo.PokemonBaseAttributes
			SELECT DISTINCT JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.name') AS Name, 
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.types[0]'),'$.type.name') AS Type1,
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.types[1]'),'$.type.name') AS Type2,
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.abilities[0]'),'$.ability.name') AS Ability1,
				CASE WHEN JSON_VALUE(JSON_QUERY(@PkmnData,'$.abilities[1]'),'$.is_hidden') = 'false' THEN
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.abilities[1]'),'$.ability.name') ELSE NULL 
					END AS Ability2,
				CASE WHEN JSON_VALUE(JSON_QUERY(@PkmnData,'$.abilities[1]'),'$.is_hidden') = 'true' THEN 
					JSON_VALUE(JSON_QUERY(@PkmnData,'$.abilities[1]'),'$.ability.name') 
					ELSE JSON_VALUE(JSON_QUERY(@PkmnData,'$.abilities[2]'),'$.ability.name')
					END AS AbilityHidden,
				JSON_VALUE(@PkmnData,'$.height') AS Height,
				JSON_VALUE(@PkmnData,'$.weight') AS Weight, 
				JSON_VALUE(@PkmnData,'$.base_experience')AS BaseExperience,
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.stats'),'$[0].base_stat') AS BaseHP,
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.stats'),'$[1].base_stat') AS BaseAtk, 
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.stats'),'$[2].base_stat') AS BaseDef, 
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.stats'),'$[3].base_stat') AS BaseSpAtk, 
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.stats'),'$[4].base_stat') AS BaseSpDef, 
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.stats'),'$[5].base_stat') AS BaseSpd,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData) P

			COMMIT TRANSACTION BT

			/***Learnable Moves***/
			BEGIN TRANSACTION LM WITH MARK 'Insert Learnable Moves Data'

			IF (@TruncateTable = 1) TRUNCATE TABLE PokemonAPI.dbo.PokemonLearnableMoves
			INSERT INTO PokemonAPI.dbo.PokemonLearnableMoves
			SELECT JSON_VALUE(JSON_QUERY(@PkmnData,'$'),'$.id') AS PkmnID
				,JSON_VALUE(B.VALUE,'$.move.name') AS MoveName
				,JSON_VALUE(C.VALUE, '$.level_learned_at') AS LevelLearnedAt
				,JSON_VALUE(C.VALUE, '$.move_learn_method.name') AS MoveLearnMethod
				,JSON_VALUE(C.VALUE, '$.version_group.name') AS VersionGroup
				,GETDATE() AS CreatedDate
				,SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData, '$.moves') B
			CROSS APPLY OPENJSON(B.VALUE, '$.version_group_details') C

			COMMIT TRANSACTION LM
		END
	ELSE
		BEGIN
			PRINT 'Invalid JSON Imported'
		END

END
GO
/****** Object:  StoredProcedure [dbo].[Load_Pokemon-Form]    Script Date: 4/12/2025 8:36:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		Garren Davis
-- Create date: 3/3/2025
-- Description:	Loops through Pokemon Forms JSON files and imports results into existing tables.
-- =============================================



--  EXEC PokemonAPI.dbo.Pkmn_Load_Pokemon-Form

CREATE PROCEDURE [dbo].[Load_Pokemon-Form]
	@JSONFile varchar(300) = 'C:\PokemonFiles\Pokemon-Form\1_Pokemon-Form_030325-215123.json',--NULL,
	@TruncateTable bit = 0
AS
BEGIN
	
	DECLARE @PkmnData VARCHAR(MAX)
	DECLARE @SQLCommand NVARCHAR(MAX) = 'SELECT @JSONData = BulkColumn FROM OPENROWSET(BULK ''' + @JSONFile + ''', SINGLE_NCLOB, CODEPAGE = ''65001'') JSON'
	DECLARE @Params NVARCHAR(MAX) = '@JSONData VARCHAR(MAX) OUTPUT'

	EXEC sp_executesql @SQLCommand, @Params, @JSONData=@PkmnData OUTPUT

	IF (ISJSON(@PkmnData) = 1)
		BEGIN

			/***Forms Data***/
			BEGIN TRANSACTION BT WITH MARK 'Insert Forms Data'

			IF (@TruncateTable = 1) TRUNCATE TABLE PokemonAPI.dbo.PokemonForms
			INSERT INTO PokemonAPI.dbo.PokemonForms
			SELECT DISTINCT JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.name') AS Name, 
				JSON_VALUE(@PkmnData,'$.PokemonAPI.name') AS BaseName,
				JSON_VALUE(@PkmnData,'$.form_name') AS FormName,
				JSON_VALUE(@PkmnData,'$.order') AS FormOrder,
				JSON_VALUE(@PkmnData,'$.is_default') AS IsDefault,
				JSON_VALUE(@PkmnData,'$.is_battle_only') AS IsBattleOnly,
				JSON_VALUE(@PkmnData,'$.is_mega') AS IsMega,
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.types[0]'),'$.type.name') AS Type1,
				JSON_VALUE(JSON_QUERY(@PkmnData,'$.types[1]'),'$.type.name') AS Type2,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData) P

			COMMIT TRANSACTION BT
		END
	ELSE
		BEGIN
			PRINT 'Invalid JSON Imported'
		END

END
GO
/****** Object:  StoredProcedure [dbo].[Load_Type]    Script Date: 4/12/2025 8:36:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		Garren Davis
-- Create date: 3/3/2025
-- Description:	Loops through Type JSON files and imports results into existing tables.
-- =============================================



--  EXEC PokemonAPI.dbo.Pkmn_Load_Type

CREATE PROCEDURE [dbo].[Load_Type]
	@JSONFile varchar(300) = NULL,
	@TruncateTable bit = 0
AS
BEGIN
	
	DECLARE @PkmnData VARCHAR(MAX)
	DECLARE @SQLCommand NVARCHAR(MAX) = 'SELECT @JSONData = BulkColumn FROM OPENROWSET(BULK ''' + @JSONFile + ''', SINGLE_NCLOB, CODEPAGE = ''65001'') JSON'
	DECLARE @Params NVARCHAR(MAX) = '@JSONData VARCHAR(MAX) OUTPUT'

	EXEC sp_executesql @SQLCommand, @Params, @JSONData=@PkmnData OUTPUT

	IF (ISJSON(@PkmnData) = 1)
		BEGIN

			/***Types***/
			BEGIN TRANSACTION BT WITH MARK 'Insert Type Data'

			IF(@TruncateTable = 1) TRUNCATE TABLE PokemonAPI.dbo.Types

			INSERT INTO PokemonAPI.dbo.Types (Type, OpposingType, DamageRelation, CreatedDate, CreatedBy)
			SELECT DISTINCT --JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.name') AS Type, 
				JSON_VALUE(DR.Value,'$.name') AS OpposingType,
				'double_damage_from' AS DamageRelation,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData, '$.damage_relations.double_damage_from') DR
				UNION ALL
			SELECT DISTINCT --JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.name') AS Type, 
				JSON_VALUE(DR.Value,'$.name') AS OpposingType,
				'double_damage_to' AS DamageRelation,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData, '$.damage_relations.double_damage_to') DR
				UNION ALL
			SELECT DISTINCT --JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.name') AS Type, 
				JSON_VALUE(DR.Value,'$.name') AS OpposingType,
				'half_damage_from' AS DamageRelation,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData, '$.damage_relations.half_damage_from') DR
				UNION ALL
			SELECT DISTINCT --JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.name') AS Type, 
				JSON_VALUE(DR.Value,'$.name') AS OpposingType,
				'half_damage_to' AS DamageRelation,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData, '$.damage_relations.half_damage_to') DR
				UNION ALL
			SELECT DISTINCT --JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.name') AS Type, 
				JSON_VALUE(DR.Value,'$.name') AS OpposingType,
				'no_damage_from' AS DamageRelation,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData, '$.damage_relations.no_damage_from') DR
				UNION ALL
			SELECT DISTINCT --JSON_VALUE(@PkmnData,'$.id') AS PkmnID,
				JSON_VALUE(@PkmnData,'$.name') AS Type, 
				JSON_VALUE(DR.Value,'$.name') AS OpposingType,
				'no_damage_to' AS DamageRelation,
				GETDATE() AS CreatedDate,
				SUSER_ID() AS CreatedBy
			FROM OPENJSON(@PkmnData, '$.damage_relations.no_damage_to') DR

			COMMIT TRANSACTION BT

		END
	ELSE
		BEGIN
			PRINT 'Invalid JSON Imported'
		END

END
GO
/****** Object:  StoredProcedure [dbo].[Pkmn_MainLoadProc]    Script Date: 4/12/2025 8:36:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Garren Davis
-- Create date: 2/15/2025
-- Description:	Loops through Pokemon JSON files and imports results into existing tables.
-- =============================================

--  EXEC PokemonAPI.dbo.Pkmn_MainLoadProc 'C:\PokemonFiles', 'Pokedex'

CREATE PROCEDURE [dbo].[Pkmn_MainLoadProc] (
	@folderPath NVARCHAR(500) = 'C:\PokemonFiles'
	,@singleSelection NVARCHAR(50) = NULL
)
AS
BEGIN
	DECLARE @PkmnFile Varchar(300)
	DECLARE @subFolderPath varchar(300)
	DECLARE @subFolder Varchar(300), @subFolderName Varchar(100)
	DECLARE @SQL_Statement NVarchar(MAX)
	DECLARE @truncateFlag int

	DECLARE @folderList TABLE (
		FILE_NAME Nvarchar(500)
		,DEPTH int
	)

	DECLARE @fileList TABLE (
		FILE_NAME Nvarchar(500)
		,DEPTH int
		,IS_FILE int
	)

	INSERT INTO @folderList 
	EXEC xp_DirTree @folderPath, 1, 0

	IF(@singleSelection IS NULL)
		BEGIN
			DECLARE folderCursor CURSOR FOR
			SELECT CONCAT(@folderPath, '\', FILE_NAME) AS FOLDER_PATH,
				FILE_NAME AS FOLDER_NAME
			FROM @folderList
		END
	ELSE
		BEGIN
			DECLARE folderCursor CURSOR FOR
			SELECT CONCAT(@folderPath, '\', FILE_NAME) AS FOLDER_PATH,
				FILE_NAME AS FOLDER_NAME
			FROM @folderList
			WHERE FILE_NAME = @singleSelection
		END

	OPEN folderCursor
	FETCH NEXT FROM folderCursor
	INTO @subFolder, @subFolderName
	
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @truncateFlag = 1

		INSERT INTO @fileList
		EXEC xp_DirTree @subFolder, 0, 1

		DECLARE fileCursor CURSOR FOR
		SELECT CONCAT(@subFolder, '\', FILE_NAME) AS FULL_PATH
		FROM @fileList

		OPEN fileCursor

		FETCH NEXT FROM fileCursor
		INTO @PkmnFile

		WHILE @@FETCH_STATUS = 0
		BEGIN
			/***NOTE: Individual proc names must reflect "Load_" followed by the Folder Name applicable***/
			SET @SQL_Statement = CONCAT('EXECUTE PokemonAPI.dbo.[Load_',@subFolderName,'] ''',@PkmnFile,''',',@truncateFlag)
			PRINT @SQL_Statement
			EXEC sp_executesql @SQL_Statement
			SET @truncateFlag = 0 --We only want the table truncated on the first run of the loop, not when each file is ran
			FETCH NEXT FROM fileCursor INTO @PkmnFile
		END

		DELETE FROM @fileList
		CLOSE fileCursor
		DEALLOCATE fileCursor

		FETCH NEXT FROM folderCursor INTO @subFolder, @subFolderName
	END

	CLOSE folderCursor
	DEALLOCATE folderCursor

END
GO
