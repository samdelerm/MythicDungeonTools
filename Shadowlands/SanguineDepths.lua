local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 246
MDT.dungeonList[dungeonIndex] = L["SanguineDepths"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["sanguinedepthsShortName"],
  englishName = "SanguineDepths",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'shadowlands\\Textures\\SanguineDepths' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["SanguineDepths"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
