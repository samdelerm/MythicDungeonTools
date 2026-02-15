local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 30
MDT.dungeonList[dungeonIndex] = L["HallsOfAtonement"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["hallsofatonementShortName"],
  englishName = "HallsOfAtonement",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'shadowlands\\Textures\\HallsOfAtonement' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["HallsOfAtonement"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
