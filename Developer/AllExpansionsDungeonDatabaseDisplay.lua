-- =============================================================================
-- ALL EXPANSIONS DATABASE - DISPLAY AND QUERY UTILITY
-- =============================================================================
-- This module provides display and query functions for all dungeons
-- across all expansions
--
-- Usage:
--   local display = require("Developer/AllExpansionsDungeonDatabaseDisplay")
--   display:PrintAllDungeons()
--   display:PrintExpansion("The War Within")
--   display:Search("Algethar")
--
-- =============================================================================

local DatabaseDisplay = {}

-- =============================================================================
-- DISPLAY FUNCTIONS
-- =============================================================================

---Print all dungeons grouped by expansion
function DatabaseDisplay:PrintAllDungeons()
  local db = require("Developer/AllExpansionsDungeonDatabase")
  
  print("\n" .. string.rep("═", 80))
  print("ALL EXPANSIONS - COMPLETE DUNGEON DATABASE")
  print(string.rep("═", 80))
  
  print("\n📊 DATABASE STATISTICS")
  print("─" .. string.rep("─", 78) .. "─")
  print("Total Expansions: " .. #db.metadata.expansions)
  print("Total Dungeons: " .. db:GetTotalDungeonCount())
  print("Total POIs: " .. db.metadata.summary.totalPOIs)
  print("Total Enemies: " .. db.metadata.summary.totalEnemies)
  
  print("\n" .. string.rep("═", 80))
  
  -- Display each expansion
  for _, expInfo in ipairs(db.metadata.expansions) do
    self:PrintExpansion(expInfo.name)
  end
  
  print("\n" .. string.rep("═", 80) .. "\n")
end

---Print dungeons for a specific expansion
function DatabaseDisplay:PrintExpansion(expansionName)
  local db = require("Developer/AllExpansionsDungeonDatabase")
  local exp = db.expansions[expansionName]
  
  if not exp then
    print("Expansion not found: " .. expansionName)
    return
  end
  
  local status = ""
  for _, info in ipairs(db.metadata.expansions) do
    if info.name == expansionName then
      status = info.status
      break
    end
  end
  
  print("\n" .. string.rep("─", 80))
  print("🏰 " .. expansionName .. " [" .. status .. "]")
  print(string.rep("─", 80))
  
  if exp.patchNumber then
    print("Patch: " .. exp.patchNumber)
  end
  
  print("Dungeons: " .. #exp.dungeons)
  print("")
  
  for i, dungeon in ipairs(exp.dungeons) do
    print(string.format("  %2d. %-50s [%s]", i, dungeon.name, dungeon.file))
  end
end

---Print by status (current vs historical)
function DatabaseDisplay:PrintByStatus()
  local db = require("Developer/AllExpansionsDungeonDatabase")
  
  print("\n" .. string.rep("═", 80))
  print("DUNGEONS BY STATUS")
  print(string.rep("═", 80))
  
  print("\n✓ CURRENT (Actively Supported)")
  print(string.rep("─", 80))
  
  local currentCount = 0
  for _, info in ipairs(db.metadata.expansions) do
    if info.status == "Current" then
      local exp = db.expansions[info.name]
      print(string.format("\n  %s (%d dungeons)", info.name, info.dungeonCount))
      for _, dungeon in ipairs(exp.dungeons) do
        print(string.format("    • %s", dungeon.name))
      end
      currentCount = currentCount + info.dungeonCount
    end
  end
  
  print("\n\n📜 HISTORICAL (Legacy/Archive)")
  print(string.rep("─", 80))
  
  local historicalCount = 0
  for _, info in ipairs(db.metadata.expansions) do
    if info.status == "Historical" then
      local exp = db.expansions[info.name]
      print(string.format("\n  %s (%d dungeons)", info.name, info.dungeonCount))
      for _, dungeon in ipairs(exp.dungeons) do
        print(string.format("    • %s", dungeon.name))
      end
      historicalCount = historicalCount + info.dungeonCount
    end
  end
  
  print("\n\n" .. string.rep("─", 80))
  print(string.format("Current: %d dungeons | Historical: %d dungeons | Total: %d dungeons",
    currentCount, historicalCount, currentCount + historicalCount))
  print(string.rep("═", 80) .. "\n")
end

---Search for dungeons by name
function DatabaseDisplay:Search(searchTerm)
  local db = require("Developer/AllExpansionsDungeonDatabase")
  searchTerm = searchTerm:lower()
  
  local results = {}
  
  for expName, exp in pairs(db.expansions) do
    if exp.dungeons then
      for _, dungeon in ipairs(exp.dungeons) do
        if dungeon.name:lower():find(searchTerm, 1, true) then
          table.insert(results, {
            expansion = expName,
            name = dungeon.name,
            file = dungeon.file
          })
        end
      end
    end
  end
  
  if #results == 0 then
    print("\nNo dungeons found matching: " .. searchTerm .. "\n")
    return
  end
  
  print("\n" .. string.rep("═", 80))
  print("SEARCH RESULTS: " .. searchTerm .. " (" .. #results .. " match" .. 
    (#results > 1 and "es" or "") .. ")")
  print(string.rep("═", 80) .. "\n")
  
  for _, result in ipairs(results) do
    print(string.format("  %s", result.name))
    print(string.format("    └─ Expansion: %s", result.expansion))
    print(string.format("    └─ File: %s", result.file))
    print("")
  end
  
  print(string.rep("═", 80) .. "\n")
end

---Print statistics
function DatabaseDisplay:PrintStatistics()
  local db = require("Developer/AllExpansionsDungeonDatabase")
  
  print("\n" .. string.rep("═", 80))
  print("DATABASE STATISTICS")
  print(string.rep("═", 80))
  
  print("\nOverall:")
  print(string.format("  Expansions: %d", #db.metadata.expansions))
  print(string.format("  Total Dungeons: %d", db:GetTotalDungeonCount()))
  print(string.format("  Total POIs: %d", db.metadata.summary.totalPOIs))
  print(string.format("  Total Enemies: %d", db.metadata.summary.totalEnemies))
  
  print("\nBy Expansion:")
  print(string.rep("─", 80))
  print(string.format("%-35s %12s %12s", "Expansion", "Dungeons", "Status"))
  print(string.rep("─", 80))
  
  for _, info in ipairs(db.metadata.expansions) do
    print(string.format("%-35s %12d %12s", info.name, info.dungeonCount, info.status))
  end
  
  print("\n" .. string.rep("═", 80) .. "\n")
end

---Print dungeon details
function DatabaseDisplay:PrintDungeonDetails(expName, dungeonNumber)
  local db = require("Developer/AllExpansionsDungeonDatabase")
  local exp = db.expansions[expName]
  
  if not exp then
    print("Expansion not found: " .. expName)
    return
  end
  
  if not exp.dungeons[dungeonNumber] then
    print("Dungeon #" .. dungeonNumber .. " not found in " .. expName)
    return
  end
  
  local dungeon = exp.dungeons[dungeonNumber]
  
  print("\n" .. string.rep("═", 80))
  print("DUNGEON DETAILS")
  print(string.rep("═", 80))
  print(string.format("\nName: %s", dungeon.name))
  print(string.format("Expansion: %s", expName))
  print(string.format("File: %s", dungeon.file))
  print(string.rep("═", 80) .. "\n")
end

---Print interactive menu
function DatabaseDisplay:PrintMenu()
  print("\n" .. string.rep("═", 80))
  print("ALL EXPANSIONS DATABASE - QUERY MENU")
  print(string.rep("═", 80))
  
  print("\nAvailable Commands:")
  print("  display:PrintAllDungeons()      - Show all dungeons")
  print("  display:PrintByStatus()         - Group by status (current/historical)")
  print("  display:PrintStatistics()       - Show statistics")
  print("  display:PrintExpansion(name)    - Show dungeons for expansion")
  print("  display:Search(term)            - Search for dungeons")
  
  print("\nExample Expansion Names:")
  local db = require("Developer/AllExpansionsDungeonDatabase")
  for _, info in ipairs(db.metadata.expansions) do
    print("  • " .. info.name)
  end
  
  print("\nExample Searches:")
  print("  display:Search('Algethar')")
  print("  display:Search('Ara')")
  print("  display:Search('Karazhan')")
  
  print("\n" .. string.rep("═", 80) .. "\n")
end

-- Execute if called directly
if arg and arg[0] then
  DatabaseDisplay:PrintAllDungeons()
end

return DatabaseDisplay
