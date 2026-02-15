local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 225
MDT.dungeonList[dungeonIndex] = L["ShrineoftheStorm"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["shrineofthestormShortName"],
  englishName = "ShrineoftheStorm",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'battleforazeroth\\Textures\\ShrineoftheStorm' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["ShrineoftheStorm"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
