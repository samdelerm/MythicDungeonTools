local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 207
MDT.dungeonList[dungeonIndex] = L["NeltharionsLair"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["neltharionslairShortName"],
  englishName = "NeltharionsLair",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'legion\\Textures\\NeltharionsLair' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["NeltharionsLair"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
