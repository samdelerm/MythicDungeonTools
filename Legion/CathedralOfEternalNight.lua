local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 201
MDT.dungeonList[dungeonIndex] = L["CathedralOfEternalNight"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["cathedralofeternalnightShortName"],
  englishName = "CathedralOfEternalNight",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'legion\\Textures\\CathedralOfEternalNight' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["CathedralOfEternalNight"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
