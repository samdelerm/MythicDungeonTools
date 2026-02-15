local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 227
MDT.dungeonList[dungeonIndex] = L["TempleofSethraliss"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["templeofsethralissShortName"],
  englishName = "TempleofSethraliss",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'battleforazeroth\\Textures\\TempleofSethraliss' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["TempleofSethraliss"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
