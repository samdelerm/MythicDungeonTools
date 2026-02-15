local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 111
MDT.dungeonList[dungeonIndex] = L["TheDawnbreaker"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["thedawnbreakerShortName"],
  englishName = "TheDawnbreaker",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'thewarwithin\\Textures\\TheDawnbreaker' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["TheDawnbreaker"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
