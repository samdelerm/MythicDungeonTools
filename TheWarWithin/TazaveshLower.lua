local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 37
MDT.dungeonList[dungeonIndex] = L["TazaveshLower"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["tazaveshlowerShortName"],
  englishName = "TazaveshLower",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'thewarwithin\\Textures\\TazaveshLower' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["TazaveshLower"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
