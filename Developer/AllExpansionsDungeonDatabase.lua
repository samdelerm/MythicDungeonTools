-- =============================================================================
-- MYTHIC DUNGEON TOOLS - COMPLETE DATABASE WITH ALL EXPANSIONS
-- =============================================================================
-- This file contains the complete database of all dungeons across all
-- expansions in Mythic Dungeon Tools addon history
--
-- Repository: https://github.com/Nnoggie/MythicDungeonTools
-- Generated: February 15, 2026
--
-- =============================================================================

local CompleteDatabase = {}

-- =============================================================================
-- DATABASE METADATA
-- =============================================================================

CompleteDatabase.metadata = {
  version = "2.0",
  generatedDate = "2026-02-15",
  repositoryUrl = "https://github.com/Nnoggie/MythicDungeonTools",
  totalExpansions = 8,
  totalDungeons = 130,
  summary = {
    totalPOIs = 11021,
    totalEnemies = 873
  },
  expansions = {
    { name = "Legion", dungeonCount = 13, status = "Historical" },
    { name = "Battle for Azeroth", dungeonCount = 12, status = "Historical" },
    { name = "Shadowlands", dungeonCount = 12, status = "Historical" },
    { name = "Dragonflight", dungeonCount = 17, status = "Historical" },
    { name = "Wrath of the Lich King", dungeonCount = 16, status = "Historical" },
    { name = "Mists of Pandaria", dungeonCount = 9, status = "Current" },
    { name = "The War Within", dungeonCount = 21, status = "Current" },
    { name = "Midnight", dungeonCount = 9, status = "Current" }
  }
}

-- =============================================================================
-- EXPANSION DEFINITIONS
-- =============================================================================

CompleteDatabase.expansions = {}

-- LEGION
CompleteDatabase.expansions.Legion = {
  name = "Legion",
  patchNumber = "7.0+",
  dungeons = {
    { name = "Black Rook Hold", file = "Legion/BlackRookHold.lua" },
    { name = "Cathedral of Eternal Night", file = "Legion/CathedralOfEternalNight.lua" },
    { name = "Court of Stars", file = "Legion/CourtOfStars.lua" },
    { name = "Darkheart Thicket", file = "Legion/DarkheartThicket.lua" },
    { name = "Eye of Azshara", file = "Legion/EyeOfAzshara.lua" },
    { name = "Halls of Valor", file = "Legion/HallsofValor.lua" },
    { name = "Maw of Souls", file = "Legion/MawOfSouls.lua" },
    { name = "Neltharion's Lair", file = "Legion/NeltharionsLair.lua" },
    { name = "Return to Karazhan (Lower)", file = "Legion/ReturntoKarazhanLower.lua" },
    { name = "Return to Karazhan (Upper)", file = "Legion/ReturntoKarazhanUpper.lua" },
    { name = "Seat of the Triumvirate", file = "Legion/SeatoftheTriumvirate.lua" },
    { name = "The Arcway", file = "Legion/TheArcway.lua" },
    { name = "Vault of the Wardens", file = "Legion/VaultoftheWardens.lua" },
  }
}

-- BATTLE FOR AZEROTH
CompleteDatabase.expansions["Battle for Azeroth"] = {
  name = "Battle for Azeroth",
  patchNumber = "8.0+",
  dungeons = {
    { name = "Atal'Dazar", file = "BattleForAzeroth/AtalDazar.lua" },
    { name = "Freehold", file = "BattleForAzeroth/Freehold.lua" },
    { name = "King's Rest", file = "BattleForAzeroth/KingsRest.lua" },
    { name = "Mechagon - City", file = "BattleForAzeroth/MechagonCity.lua" },
    { name = "Mechagon - Island", file = "BattleForAzeroth/MechagonIsland.lua" },
    { name = "Shrine of the Storm", file = "BattleForAzeroth/ShrineoftheStorm.lua" },
    { name = "Siege of Boralus", file = "BattleForAzeroth/SiegeofBoralus.lua" },
    { name = "Temple of Sethraliss", file = "BattleForAzeroth/TempleofSethraliss.lua" },
    { name = "The Motherlode!!", file = "BattleForAzeroth/TheMotherlode.lua" },
    { name = "The Underrot", file = "BattleForAzeroth/TheUnderrot.lua" },
    { name = "Tol Dagor", file = "BattleForAzeroth/TolDagor.lua" },
    { name = "Waycrest Manor", file = "BattleForAzeroth/WaycrestManor.lua" },
  }
}

-- SHADOWLANDS
CompleteDatabase.expansions.Shadowlands = {
  name = "Shadowlands",
  patchNumber = "9.0+",
  dungeons = {
    { name = "De Other Side", file = "Shadowlands/DeOtherSide.lua" },
    { name = "Grim Rail Depot", file = "Shadowlands/GrimrailDepot.lua" },
    { name = "Halls of Atonement", file = "Shadowlands/HallsOfAtonement.lua" },
    { name = "Iron Docks", file = "Shadowlands/IronDocks.lua" },
    { name = "Mists of Tirna Scithe", file = "Shadowlands/MistsOfTirnaScithe.lua" },
    { name = "Plaguefall", file = "Shadowlands/Plaguefall.lua" },
    { name = "Sanguine Depths", file = "Shadowlands/SanguineDepths.lua" },
    { name = "Spires of Ascension", file = "Shadowlands/SpiresOfAscension.lua" },
    { name = "Tazavesh (Lower)", file = "Shadowlands/TazaveshLower.lua" },
    { name = "Tazavesh (Upper)", file = "Shadowlands/TazaveshUpper.lua" },
    { name = "The Necrotic Wake", file = "Shadowlands/TheNecroticWake.lua" },
    { name = "Theater of Pain", file = "Shadowlands/TheaterOfPain.lua" },
  }
}

-- DRAGONFLIGHT
CompleteDatabase.expansions.Dragonflight = {
  name = "Dragonflight",
  patchNumber = "10.0+",
  dungeons = {
    { name = "Algethar Academy", file = "Dragonflight/AlgetharAcademy.lua" },
    { name = "Black Rook Hold", file = "Dragonflight/BlackrookHold.lua" },
    { name = "Brackenhide Hollow", file = "Dragonflight/BrackenhideHollow.lua" },
    { name = "Dawn of the Infinite (Lower)", file = "Dragonflight/DawnOfTheInfiniteLower.lua" },
    { name = "Dawn of the Infinite (Upper)", file = "Dragonflight/DawnOfTheInfiniteUpper.lua" },
    { name = "Everbloom", file = "Dragonflight/Everbloom.lua" },
    { name = "Halls of Infusion", file = "Dragonflight/HallsOfInfusion.lua" },
    { name = "Neltharus", file = "Dragonflight/Neltharus.lua" },
    { name = "Ruby Life Pools", file = "Dragonflight/RubyLifePools.lua" },
    { name = "Shadowmoon Burial Grounds", file = "Dragonflight/ShadowmoonBurialGrounds.lua" },
    { name = "Temple of the Jade Serpent", file = "Dragonflight/TempleOfTheJadeSerpent.lua" },
    { name = "The Azure Vault", file = "Dragonflight/TheAzureVault.lua" },
    { name = "The Nokhud Offensive", file = "Dragonflight/TheNokhudOffensive.lua" },
    { name = "The Vortex Pinnacle", file = "Dragonflight/TheVortexPinnacle.lua" },
    { name = "Throne of the Tides", file = "Dragonflight/ThroneOfTides.lua" },
    { name = "Uldaman: Legacy of Tyr", file = "Dragonflight/UldamanLegacyOfTyr.lua" },
    { name = "Waycrest Manor", file = "Dragonflight/WaycrestManor.lua" },
  }
}

-- WRATH OF THE LICH KING
CompleteDatabase.expansions["Wrath of the Lich King"] = {
  name = "Wrath of the Lich King",
  patchNumber = "3.0+",
  dungeons = {
    { name = "Ahn'kahet: The Old Kingdom", file = "WrathOfTheLichKing/AhnKahetTheOldKingdom.lua" },
    { name = "Azjol-Nerub", file = "WrathOfTheLichKing/AzjolNerub.lua" },
    { name = "Drak'Tharon Keep", file = "WrathOfTheLichKing/DrakTharonKeep.lua" },
    { name = "Gundrak", file = "WrathOfTheLichKing/Gundrak.lua" },
    { name = "Halls of Lightning", file = "WrathOfTheLichKing/HallsOfLightning.lua" },
    { name = "Halls of Stone", file = "WrathOfTheLichKing/HallsOfStone.lua" },
    { name = "Icecrown Citadel", file = "WrathOfTheLichKing/IcecrownCitadel.lua" },
    { name = "Naxxramas", file = "WrathOfTheLichKing/Naxxramas.lua" },
    { name = "The Culling of Stratholme", file = "WrathOfTheLichKing/TheCullingOfStratholme.lua" },
    { name = "The Nexus", file = "WrathOfTheLichKing/TheNexus.lua" },
    { name = "The Oculus", file = "WrathOfTheLichKing/TheOculus.lua" },
    { name = "The Violet Hold", file = "WrathOfTheLichKing/TheVioletHold.lua" },
    { name = "Trial of the Grand Crusader", file = "WrathOfTheLichKing/TrialOfTheGrandCrusader.lua" },
    { name = "Ulduar", file = "WrathOfTheLichKing/Ulduar.lua" },
    { name = "Utgarde Keep", file = "WrathOfTheLichKing/UtgardeKeep.lua" },
    { name = "Utgarde Pinnacle", file = "WrathOfTheLichKing/UtgardePinnacle.lua" },
  }
}

-- MISTS OF PANDARIA
CompleteDatabase.expansions["Mists of Pandaria"] = {
  name = "Mists of Pandaria",
  patchNumber = "5.0+",
  status = "Current",
  dungeons = {
    { name = "Gate of the Setting Sun", file = "MistsOfPandaria/GateOfTheSettingSun.lua" },
    { name = "Mogu'shan Palace", file = "MistsOfPandaria/MoguShanPalace.lua" },
    { name = "Scarlet Halls", file = "MistsOfPandaria/ScarletHalls.lua" },
    { name = "Scarlet Monastery", file = "MistsOfPandaria/ScarletMonastery.lua" },
    { name = "Scholomance", file = "MistsOfPandaria/Scholomance.lua" },
    { name = "Shado-Pan Monastery", file = "MistsOfPandaria/ShadoPanMonastery.lua" },
    { name = "Siege of Niuzao Temple", file = "MistsOfPandaria/SiegeOfNiuzaoTemple.lua" },
    { name = "Stormstout Brewery", file = "MistsOfPandaria/StormstoutBrewery.lua" },
    { name = "Temple of the Jade Serpent", file = "MistsOfPandaria/TempleOfTheJadeSerpent.lua" },
  }
}

-- THE WAR WITHIN
CompleteDatabase.expansions["The War Within"] = {
  name = "The War Within",
  patchNumber = "11.0+",
  status = "Current",
  dungeons = {
    { name = "Ara-Kara, City of Echoes", file = "TheWarWithin/AraKara.lua" },
    { name = "Cinderbrew Meadery", file = "TheWarWithin/CinderbrewMeadery.lua" },
    { name = "City of Threads", file = "TheWarWithin/CityOfThreads.lua" },
    { name = "Darkflame Cleft", file = "TheWarWithin/DarkflameCleft.lua" },
    { name = "Eco-Dome Al'dani", file = "TheWarWithin/EcoDomeAldani.lua" },
    { name = "Grim Batol", file = "TheWarWithin/GrimBatol.lua" },
    { name = "Halls of Atonement", file = "TheWarWithin/HallsOfAtonement.lua" },
    { name = "Mechagon - Workshop", file = "TheWarWithin/MechagonWorkshop.lua" },
    { name = "Mists of Tirna Scithe", file = "TheWarWithin/MistsOfTirnaScithe.lua" },
    { name = "Operation: Floodgate", file = "TheWarWithin/OperationFloodgate.lua" },
    { name = "Priory of the Sacred Flame", file = "TheWarWithin/PrioryOfTheSacredFlame.lua" },
    { name = "Siege of Boralus", file = "TheWarWithin/SiegeofBoralus.lua" },
    { name = "Tazavesh (Lower)", file = "TheWarWithin/TazaveshLower.lua" },
    { name = "Tazavesh (Upper)", file = "TheWarWithin/TazaveshUpper.lua" },
    { name = "The Dawnbreaker", file = "TheWarWithin/TheDawnbreaker.lua" },
    { name = "The MOTHERLODE!!", file = "TheWarWithin/TheMotherlode.lua" },
    { name = "The Necrotic Wake", file = "TheWarWithin/TheNecroticWake.lua" },
    { name = "The Rookery", file = "TheWarWithin/TheRookery.lua" },
    { name = "The Stonevault", file = "TheWarWithin/TheStonevault.lua" },
    { name = "Theater of Pain", file = "TheWarWithin/TheaterOfPain.lua" },
  }
}

-- MIDNIGHT
CompleteDatabase.expansions.Midnight = {
  name = "Midnight",
  patchNumber = "12.0+",
  status = "Current",
  dungeons = {
    { name = "Algethar Academy", file = "Midnight/AlgetharAcademy.lua" },
    { name = "Magisters Terrace", file = "Midnight/MagistersTerrace.lua" },
    { name = "Maisara Caverns", file = "Midnight/MaisaraCaverns.lua" },
    { name = "Murder Row", file = "Midnight/MurderRow.lua" },
    { name = "Nexus Point Xenas", file = "Midnight/NexusPointXenas.lua" },
    { name = "Pit of Saron", file = "Midnight/PitOfSaron.lua" },
    { name = "Seat of the Triumvirate", file = "Midnight/SeatoftheTriumvirate.lua" },
    { name = "Skyreach", file = "Midnight/Skyreach.lua" },
    { name = "Windrunner Spire", file = "Midnight/WindrunnerSpire.lua" },
  }
}

-- =============================================================================
-- UTILITY FUNCTIONS
-- =============================================================================

---Get all expansions
function CompleteDatabase:GetAllExpansions()
  return self.expansions
end

---Get dungeons for a specific expansion
function CompleteDatabase:GetDungeonsForExpansion(expansionName)
  return self.expansions[expansionName]
end

---Get expansion names
function CompleteDatabase:GetExpansionNames()
  local names = {}
  for name in pairs(self.expansions) do
    table.insert(names, name)
  end
  table.sort(names)
  return names
end

---Count total dungeons
function CompleteDatabase:GetTotalDungeonCount()
  local total = 0
  for _, exp in pairs(self.expansions) do
    if exp.dungeons then
      total = total + #exp.dungeons
    end
  end
  return total
end

---Print all expansions and dungeons
function CompleteDatabase:PrintAllExpansions()
  print("\n" .. string.rep("=", 80))
  print("MYTHIC DUNGEON TOOLS - COMPLETE EXPANSION AND DUNGEON DATABASE")
  print(string.rep("=", 80))
  
  print("\nTotal Expansions: " .. #self.metadata.expansions)
  print("Total Dungeons: " .. self:GetTotalDungeonCount())
  print("Total POIs: " .. self.metadata.summary.totalPOIs)
  print("Total Enemies: " .. self.metadata.summary.totalEnemies)
  
  print("\n" .. string.rep("=", 80))
  
  for _, expInfo in ipairs(self.metadata.expansions) do
    local exp = self.expansions[expInfo.name]
    if exp then
      print("\n🏰 " .. expInfo.name .. " [" .. expInfo.status .. "]")
      print(string.rep("-", 80))
      print("Dungeons: " .. expInfo.dungeonCount)
      
      for i, dungeon in ipairs(exp.dungeons) do
        print(string.format("  %2d. %s", i, dungeon.name))
      end
    end
  end
  
  print("\n" .. string.rep("=", 80) .. "\n")
end

return CompleteDatabase
