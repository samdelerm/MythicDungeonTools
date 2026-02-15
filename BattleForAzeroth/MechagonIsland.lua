local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 224
MDT.dungeonList[dungeonIndex] = L["MechagonIsland"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["mechagonislandShortName"],
  englishName = "MechagonIsland",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'battleforazeroth\\Textures\\MechagonIsland' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["MechagonIsland"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
