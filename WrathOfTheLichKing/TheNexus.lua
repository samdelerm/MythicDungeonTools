local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 289
MDT.dungeonList[dungeonIndex] = L["TheNexus"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["thenexusShortName"],
  englishName = "TheNexus",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'wrathofthelichking\\Textures\\TheNexus' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["TheNexus"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
