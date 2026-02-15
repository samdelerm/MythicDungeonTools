local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 253
MDT.dungeonList[dungeonIndex] = L["DawnOfTheInfiniteUpper"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["dawnoftheinfiniteupperShortName"],
  englishName = "DawnOfTheInfiniteUpper",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'dragonflight\\Textures\\DawnOfTheInfiniteUpper' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["DawnOfTheInfiniteUpper"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
