local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 120
MDT.dungeonList[dungeonIndex] = L["TheMotherlode"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["themotherlodeShortName"],
  englishName = "TheMotherlode",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'thewarwithin\\Textures\\TheMotherlode' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["TheMotherlode"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
