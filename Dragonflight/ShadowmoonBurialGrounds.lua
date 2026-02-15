local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 258
MDT.dungeonList[dungeonIndex] = L["ShadowmoonBurialGrounds"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["shadowmoonburialgroundsShortName"],
  englishName = "ShadowmoonBurialGrounds",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'dragonflight\\Textures\\ShadowmoonBurialGrounds' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["ShadowmoonBurialGrounds"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
