local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 206
MDT.dungeonList[dungeonIndex] = L["MawOfSouls"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["mawofsoulsShortName"],
  englishName = "MawOfSouls",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'legion\\Textures\\MawOfSouls' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["MawOfSouls"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
