-- =============================================================================
-- Consolidated Dungeon Database Validator and Accessor
-- =============================================================================
-- This module provides validation and access utilities for the complete
-- consolidated dungeon database

local Validator = {}

-- Import the database
local function GetDatabase()
  -- Try to load the Lua database first
  local success, db = pcall(function()
    return dofile("ConsolidatedDungeonDatabase.lua")
  end)
  
  if success and db then
    return db
  end
  
  return nil
end

-- =============================================================================
-- Validation Functions
-- =============================================================================

---Validate database integrity
function Validator:ValidateDatabase()
  local db = GetDatabase()
  if not db then
    return {
      valid = false,
      errors = { "Database not accessible" }
    }
  end

  local errors = {}
  local warnings = {}
  
  -- Check metadata
  if not db.metadata then
    table.insert(errors, "Missing metadata section")
  end
  
  if not db.dungeons then
    table.insert(errors, "Missing dungeons section")
  else
    local totalDungeons = 0
    local totalPOIs = 0
    local totalEnemies = 0
    
    for idx, dungeon in pairs(db.dungeons) do
      totalDungeons = totalDungeons + 1
      
      -- Check required fields
      if not dungeon.name then
        table.insert(errors, string.format("Dungeon %d missing 'name'", idx))
      end
      
      if not dungeon.englishName then
        table.insert(errors, string.format("Dungeon %d missing 'englishName'", idx))
      end
      
      if not dungeon.expansion then
        table.insert(errors, string.format("Dungeon %d missing 'expansion'", idx))
      end
      
      if not dungeon.stats then
        table.insert(errors, string.format("Dungeon %d missing 'stats'", idx))
      else
        totalPOIs = totalPOIs + (dungeon.stats.poiCount or 0)
        totalEnemies = totalEnemies + (dungeon.stats.enemyCount or 0)
      end
      
      -- Specific check for incomplete dungeons
      if dungeon.stats.poiCount == 1 and dungeon.stats.enemyCount == 0 then
        table.insert(warnings, string.format("Dungeon %d (%s) appears incomplete", idx, dungeon.name))
      end
    end
    
    -- Verify counts match metadata
    if db.metadata.summary then
      if db.metadata.summary.totalDungeons ~= totalDungeons then
        table.insert(warnings, string.format(
          "Dungeon count mismatch: expected %d, found %d",
          db.metadata.summary.totalDungeons, totalDungeons
        ))
      end
      
      if db.metadata.summary.totalPOIs ~= totalPOIs then
        table.insert(warnings, string.format(
          "POI count mismatch: expected %d, found %d",
          db.metadata.summary.totalPOIs, totalPOIs
        ))
      end
    end
  end
  
  return {
    valid = #errors == 0,
    errorCount = #errors,
    warningCount = #warnings,
    errors = errors,
    warnings = warnings
  }
end

---Validate specific dungeon
function Validator:ValidateDungeon(index)
  local db = GetDatabase()
  if not db then
    return { valid = false, error = "Database not accessible" }
  end
  
  local dungeon = db.dungeons[index]
  if not dungeon then
    return { valid = false, error = "Dungeon not found at index " .. index }
  end
  
  local result = {
    valid = true,
    dungeon = dungeon,
    checks = {}
  }
  
  -- Check all required fields
  local requiredFields = { "name", "englishName", "expansion", "file", "stats", "shortName" }
  for _, field in ipairs(requiredFields) do
    if dungeon[field] then
      table.insert(result.checks, { field = field, status = "✓" })
    else
      table.insert(result.checks, { field = field, status = "✗" })
      result.valid = false
    end
  end
  
  return result
end

-- =============================================================================
-- Query Functions
-- =============================================================================

---Get dungeon by index
function Validator:GetDungeon(index)
  local db = GetDatabase()
  if not db then return nil end
  return db.dungeons[index]
end

---Get all dungeons
function Validator:GetAllDungeons()
  local db = GetDatabase()
  if not db then return {} end
  return db.dungeons
end

---Search dungeons by name
function Validator:SearchByName(searchTerm)
  local db = GetDatabase()
  if not db then return {} end
  
  local results = {}
  searchTerm = searchTerm:lower()
  
  for idx, dungeon in pairs(db.dungeons) do
    if dungeon.englishName:lower():find(searchTerm, 1, true) or
       dungeon.name:lower():find(searchTerm, 1, true) or
       dungeon.shortName:lower():find(searchTerm, 1, true) then
      results[idx] = dungeon
    end
  end
  
  return results
end

---Get dungeons by expansion
function Validator:GetByExpansion(expansion)
  local db = GetDatabase()
  if not db then return {} end
  
  local results = {}
  for idx, dungeon in pairs(db.dungeons) do
    if dungeon.expansion == expansion then
      results[idx] = dungeon
    end
  end
  
  return results
end

---Get dungeons by POI count range
function Validator:GetByPOIRange(min, max)
  local db = GetDatabase()
  if not db then return {} end
  
  local results = {}
  for idx, dungeon in pairs(db.dungeons) do
    local poiCount = dungeon.stats.poiCount or 0
    if poiCount >= min and poiCount <= max then
      results[idx] = dungeon
    end
  end
  
  return results
end

---Get statistics
function Validator:GetStatistics()
  local db = GetDatabase()
  if not db then return {} end
  return db:GetStatistics()
end

-- =============================================================================
-- Display Functions
-- =============================================================================

---Print verbose validation report
function Validator:PrintValidationReport()
  print("\n" .. string.rep("=", 70))
  print("DATABASE VALIDATION REPORT")
  print(string.rep("=", 70))
  
  local result = self:ValidateDatabase()
  
  print("\nOverall Status: " .. (result.valid and "✓ VALID" or "✗ INVALID"))
  print("Errors: " .. result.errorCount)
  print("Warnings: " .. result.warningCount)
  
  if result.errorCount > 0 then
    print("\nErrors:")
    for _, err in ipairs(result.errors) do
      print("  ✗ " .. err)
    end
  end
  
  if result.warningCount > 0 then
    print("\nWarnings:")
    for _, warn in ipairs(result.warnings) do
      print("  ⚠ " .. warn)
    end
  end
  
  print("\n" .. string.rep("=", 70) .. "\n")
end

---Print dungeon information
function Validator:PrintDungeonInfo(index)
  local result = self:ValidateDungeon(index)
  
  if not result.valid then
    print("Error: " .. result.error)
    return
  end
  
  local d = result.dungeon
  
  print("\n" .. string.rep("=", 70))
  print("DUNGEON INFORMATION")
  print(string.rep("=", 70))
  print("\nIndex: " .. index)
  print("Name: " .. d.englishName .. " (" .. d.name .. ")")
  print("Short Name: " .. d.shortName)
  print("Expansion: " .. d.expansion)
  print("File: " .. d.file)
  print("\nStatistics:")
  print("  POIs: " .. (d.stats.poiCount or 0))
  print("  Enemies: " .. (d.stats.enemyCount or 0))
  print("  Sub-Levels: " .. (d.stats.subLevels or 0))
  
  print("\nField Checks:")
  for _, check in ipairs(result.checks) do
    print("  " .. check.status .. " " .. check.field)
  end
  
  print("\n" .. string.rep("=", 70) .. "\n")
end

---Print all dungeons
function Validator:PrintAllDungeons()
  local db = GetDatabase()
  if not db then
    print("Database not accessible")
    return
  end
  
  print("\n" .. string.rep("=", 70))
  print("ALL DUNGEONS")
  print(string.rep("=", 70))
  
  local dungeons = {}
  for idx in pairs(db.dungeons) do
    table.insert(dungeons, idx)
  end
  table.sort(dungeons)
  
  for _, idx in ipairs(dungeons) do
    local d = db.dungeons[idx]
    print(string.format("\n[%3d] %s", idx, d.englishName))
    print(string.format("      %s | POIs: %3d | Enemies: %2d", 
      d.expansion, d.stats.poiCount or 0, d.stats.enemyCount or 0))
  end
  
  print("\n" .. string.rep("=", 70) .. "\n")
end

---Print search results
function Validator:PrintSearchResults(results)
  if not results or #results == 0 then
    print("No results found")
    return
  end
  
  local indices = {}
  for idx in pairs(results) do
    table.insert(indices, idx)
  end
  table.sort(indices)
  
  print("\nSearch Results: " .. #indices .. " dungeon(s) found\n")
  
  for _, idx in ipairs(indices) do
    local d = results[idx]
    print(string.format("[%3d] %s - %s", idx, d.englishName, d.expansion))
  end
  
  print()
end

-- =============================================================================
-- Main Execution
-- =============================================================================

-- Expose as global if needed
_G.MDT_DatabaseValidator = Validator

return Validator
