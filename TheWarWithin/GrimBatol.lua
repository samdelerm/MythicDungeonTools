local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 112
MDT.dungeonList[dungeonIndex] = L["GrimBatol"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["grimbatolShortName"],
  englishName = "GrimBatol",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'thewarwithin\\Textures\\GrimBatol' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["GrimBatol"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
