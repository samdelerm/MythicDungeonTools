local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 113
MDT.dungeonList[dungeonIndex] = L["AraKara"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["arakaraShortName"],
  englishName = "AraKara",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'thewarwithin\\Textures\\AraKara' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["AraKara"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
