local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 121
MDT.dungeonList[dungeonIndex] = L["TheStonevault"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["thestonevaultShortName"],
  englishName = "TheStonevault",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'thewarwithin\\Textures\\TheStonevault' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["TheStonevault"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
