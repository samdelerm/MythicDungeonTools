-- =============================================================================
-- MYTHIC DUNGEON TOOLS - COMPLETE INTEGRATED DUNGEON DATABASE
-- =============================================================================
-- 
-- This file contains the complete and integrated database of all dungeons
-- reconstructed from the entire version history of MythicDungeonTools
--
-- Repository: https://github.com/Nnoggie/MythicDungeonTools
-- Generated: February 15, 2026
-- Versions Analyzed: v4.1.0.8 through 6.0.7
--
-- =============================================================================

local MDT_CompleteDatabase = {}

-- Database Metadata
MDT_CompleteDatabase.metadata = {
  version = "1.0",
  generatedDate = "2026-02-15",
  repositoryUrl = "https://github.com/Nnoggie/MythicDungeonTools",
  versionsAnalyzed = {
    "v4.1.0.8", "v4.3.1.7", "v4.4.0.8",
    "v5.0.0", "v5.0.15",
    "5.1.0", "5.2.0", "5.3.0", "5.4.0", "5.5.0",
    "5.6.0", "5.7.0", "5.8.0",
    "6.0.0", "6.0.7"
  },
  summary = {
    totalDungeons = 18,
    totalPOIs = 3577,
    totalEnemies = 353,
    totalMapConfigurations = 18
  }
}

-- =============================================================================
-- DUNGEON INVENTORY
-- =============================================================================
-- Complete list of all dungeons indexed by their index number

MDT_CompleteDatabase.dungeons = {
  -- Seat of the Triumvirate (Midnight)
  [11] = {
    name = "Seat of the Triumvirate",
    shortName = "Seat",
    englishName = "Seat of the Triumvirate",
    expansion = "Midnight",
    file = "Midnight/SeatoftheTriumvirate.lua",
    stats = {
      poiCount = 260,
      enemyCount = 22,
      subLevels = 1
    }
  },

  -- Algethar Academy (Midnight)
  [45] = {
    name = "AlgetharAcademy",
    shortName = "Algethar",
    englishName = "Algethar Academy",
    expansion = "Midnight",
    file = "Midnight/AlgetharAcademy.lua",
    stats = {
      poiCount = 271,
      enemyCount = 17,
      subLevels = 1
    }
  },

  -- Gate of the Setting Sun (Mists of Pandaria)
  [130] = {
    name = "Gate of the Setting Sun",
    shortName = "Gate",
    englishName = "Gate of the Setting Sun",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/GateOfTheSettingSun.lua",
    stats = {
      poiCount = 41,
      enemyCount = 10,
      subLevels = 2
    }
  },

  -- Mogu'shan Palace (Mists of Pandaria)
  [131] = {
    name = "Mogu'shan Palace",
    shortName = "Mogu'shan",
    englishName = "Mogu'shan Palace",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/MoguShanPalace.lua",
    stats = {
      poiCount = 101,
      enemyCount = 23,
      subLevels = 3
    }
  },

  -- Scarlet Halls (Mists of Pandaria)
  [132] = {
    name = "Scarlet Halls",
    shortName = "Scarlet Halls",
    englishName = "Scarlet Halls",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/ScarletHalls.lua",
    stats = {
      poiCount = 118,
      enemyCount = 18,
      subLevels = 1
    }
  },

  -- Scarlet Monastery (Mists of Pandaria)
  [133] = {
    name = "Scarlet Monastery",
    shortName = "Scarlet Monastery",
    englishName = "Scarlet Monastery",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/ScarletMonastery.lua",
    stats = {
      poiCount = 131,
      enemyCount = 13,
      subLevels = 2
    }
  },

  -- Scholomance (Mists of Pandaria)
  [134] = {
    name = "Scholomance",
    shortName = "Scholo",
    englishName = "Scholomance",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/Scholomance.lua",
    stats = {
      poiCount = 108,
      enemyCount = 14,
      subLevels = 4
    }
  },

  -- Shado-Pan Monastery (Mists of Pandaria)
  [135] = {
    name = "Shado-Pan Monastery",
    shortName = "Shado-Pan",
    englishName = "Shado-Pan Monastery",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/ShadoPanMonastery.lua",
    stats = {
      poiCount = 148,
      enemyCount = 20,
      subLevels = 1
    }
  },

  -- Siege of Niuzao Temple (Mists of Pandaria)
  [136] = {
    name = "Siege of Niuzao Temple",
    shortName = "Siege",
    englishName = "Siege of Niuzao Temple",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/SiegeOfNiuzaoTemple.lua",
    stats = {
      poiCount = 179,
      enemyCount = 18,
      subLevels = 1
    }
  },

  -- Stormstout Brewery (Mists of Pandaria)
  [137] = {
    name = "Stormstout Brewery",
    shortName = "Brewery",
    englishName = "Stormstout Brewery",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/StormstoutBrewery.lua",
    stats = {
      poiCount = 98,
      enemyCount = 12,
      subLevels = 1
    }
  },

  -- Temple of the Jade Serpent (Mists of Pandaria)
  [138] = {
    name = "Temple of the Jade Serpent",
    shortName = "Jade Temple",
    englishName = "Temple of the Jade Serpent",
    expansion = "Mists of Pandaria",
    file = "MistsOfPandaria/TempleOfTheJadeSerpent.lua",
    stats = {
      poiCount = 144,
      enemyCount = 19,
      subLevels = 1
    }
  },

  -- Pit of Saron (Midnight)
  [150] = {
    name = "PitOfSaron",
    shortName = "Pit",
    englishName = "Pit of Saron",
    expansion = "Midnight",
    file = "Midnight/PitOfSaron.lua",
    stats = {
      poiCount = 330,
      enemyCount = 23,
      subLevels = 1
    }
  },

  -- Skyreach (Midnight)
  [151] = {
    name = "Skyreach",
    shortName = "Sky",
    englishName = "Skyreach",
    expansion = "Midnight",
    file = "Midnight/Skyreach.lua",
    stats = {
      poiCount = 192,
      enemyCount = 22,
      subLevels = 1
    }
  },

  -- Windrunner Spire (Midnight)
  [152] = {
    name = "WindrunnerSpire",
    shortName = "Windrunner",
    englishName = "Windrunner Spire",
    expansion = "Midnight",
    file = "Midnight/WindrunnerSpire.lua",
    stats = {
      poiCount = 355,
      enemyCount = 31,
      subLevels = 1
    }
  },

  -- Magisters Terrace (Midnight)
  [153] = {
    name = "MagistersTerrace",
    shortName = "Magisters",
    englishName = "Magisters Terrace",
    expansion = "Midnight",
    file = "Midnight/MagistersTerrace.lua",
    stats = {
      poiCount = 304,
      enemyCount = 25,
      subLevels = 1
    }
  },

  -- Maisara Caverns (Midnight)
  [154] = {
    name = "MaisaraCaverns",
    shortName = "Maisara",
    englishName = "Maisara Caverns",
    expansion = "Midnight",
    file = "Midnight/MaisaraCaverns.lua",
    stats = {
      poiCount = 501,
      enemyCount = 32,
      subLevels = 1
    }
  },

  -- Nexus Point Xenas (Midnight)
  [155] = {
    name = "NexusPointXenas",
    shortName = "Nexus",
    englishName = "Nexus Point Xenas",
    expansion = "Midnight",
    file = "Midnight/NexusPointXenas.lua",
    stats = {
      poiCount = 295,
      enemyCount = 34,
      subLevels = 1
    }
  },

  -- Murder Row (Midnight)
  [160] = {
    name = "MurderRow",
    shortName = "Murder",
    englishName = "Murder Row",
    expansion = "Midnight",
    file = "Midnight/MurderRow.lua",
    stats = {
      poiCount = 1,
      enemyCount = 0,
      subLevels = 1
    }
  },
}

-- =============================================================================
-- ADDITIONAL UTILITIES
-- =============================================================================

---Get dungeon by index
function MDT_CompleteDatabase:GetDungeonByIndex(index)
  return self.dungeons[index]
end

---Get all dungeons
function MDT_CompleteDatabase:GetAllDungeons()
  return self.dungeons
end

---Get dungeon count
function MDT_CompleteDatabase:GetDungeonCount()
  local count = 0
  for _ in pairs(self.dungeons) do
    count = count + 1
  end
  return count
end

---Get dungeons by expansion
function MDT_CompleteDatabase:GetDungeonsByExpansion(expansion)
  local result = {}
  for idx, dungeon in pairs(self.dungeons) do
    if dungeon.expansion == expansion then
      result[idx] = dungeon
    end
  end
  return result
end

---Get summary statistics
function MDT_CompleteDatabase:GetStatistics()
  local stats = {
    totalDungeons = self:GetDungeonCount(),
    totalPOIs = 0,
    totalEnemies = 0,
    expansions = {}
  }

  for idx, dungeon in pairs(self.dungeons) do
    stats.totalPOIs = stats.totalPOIs + (dungeon.stats.poiCount or 0)
    stats.totalEnemies = stats.totalEnemies + (dungeon.stats.enemyCount or 0)

    if not stats.expansions[dungeon.expansion] then
      stats.expansions[dungeon.expansion] = {
        count = 0,
        pois = 0,
        enemies = 0
      }
    end
    stats.expansions[dungeon.expansion].count = stats.expansions[dungeon.expansion].count + 1
    stats.expansions[dungeon.expansion].pois = stats.expansions[dungeon.expansion].pois + (dungeon.stats.poiCount or 0)
    stats.expansions[dungeon.expansion].enemies = stats.expansions[dungeon.expansion].enemies + (dungeon.stats.enemyCount or 0)
  end

  return stats
end

---Print formatted summary
function MDT_CompleteDatabase:PrintSummary()
  print("\n" .. string.rep("=", 70))
  print("MYTHIC DUNGEON TOOLS - COMPLETE DATABASE")
  print(string.rep("=", 70))

  local stats = self:GetStatistics()

  print("\n--- SUMMARY ---")
  print("Total Dungeons: " .. stats.totalDungeons)
  print("Total POIs: " .. stats.totalPOIs)
  print("Total Enemies: " .. stats.totalEnemies)

  print("\n--- BY EXPANSION ---")
  for expansion, data in pairs(stats.expansions) do
    print(string.format("  %s: %d dungeons, %d POIs, %d enemies",
      expansion, data.count, data.pois, data.enemies))
  end

  print("\n--- DUNGEONS ---")
  for idx, dungeon in pairs(self.dungeons) do
    print(string.format("  [%3d] %-40s POIs: %3d, Enemies: %3d",
      idx, dungeon.englishName, dungeon.stats.poiCount, dungeon.stats.enemyCount))
  end

  print("\n" .. string.rep("=", 70) .. "\n")
end

return MDT_CompleteDatabase
