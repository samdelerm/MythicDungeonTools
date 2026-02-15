local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 31
MDT.dungeonList[dungeonIndex] = L["MistsOfTirnaScithe"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["mistsoftirnascitheShortName"],
  englishName = "MistsOfTirnaScithe",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'shadowlands\\Textures\\MistsOfTirnaScithe' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["MistsOfTirnaScithe"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
