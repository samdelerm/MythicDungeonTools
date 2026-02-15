local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 208
MDT.dungeonList[dungeonIndex] = L["ReturntoKarazhanLower"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["returntokarazhanlowerShortName"],
  englishName = "ReturntoKarazhanLower",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'legion\\Textures\\ReturntoKarazhanLower' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["ReturntoKarazhanLower"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
