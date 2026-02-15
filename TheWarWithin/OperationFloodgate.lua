local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 119
MDT.dungeonList[dungeonIndex] = L["OperationFloodgate"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["operationfloodgateShortName"],
  englishName = "OperationFloodgate",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'thewarwithin\\Textures\\OperationFloodgate' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["OperationFloodgate"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
