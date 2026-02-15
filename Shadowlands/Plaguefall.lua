local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 245
MDT.dungeonList[dungeonIndex] = L["Plaguefall"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["plaguefallShortName"],
  englishName = "Plaguefall",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'shadowlands\\Textures\\Plaguefall' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["Plaguefall"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
