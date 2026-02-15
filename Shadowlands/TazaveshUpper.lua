local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 38
MDT.dungeonList[dungeonIndex] = L["TazaveshUpper"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["tazaveshupperShortName"],
  englishName = "TazaveshUpper",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'shadowlands\\Textures\\TazaveshUpper' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["TazaveshUpper"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
