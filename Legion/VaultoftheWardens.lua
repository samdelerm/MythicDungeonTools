local addonName = ...
local MDT = MDT
local L = MDT.L

local dungeonIndex = 212
MDT.dungeonList[dungeonIndex] = L["VaultoftheWardens"]
MDT.mapInfo[dungeonIndex] = {
  shortName = L["vaultofthewardensShortName"],
  englishName = "VaultoftheWardens",
  mapID = 0, -- TODO: Add correct mapID
}

local zones = { } -- TODO: Add zone IDs
for _, zone in ipairs(zones) do
  MDT.zoneIdToDungeonIdx[zone] = dungeonIndex
end

MDT.dungeonMaps[dungeonIndex] = {
  [0] = "",
  [1] = { customTextures = 'Interface\\AddOns\'..addonName..'\\'..'legion\\Textures\\VaultoftheWardens' }
}

MDT.dungeonSubLevels[dungeonIndex] = {
  [1] = L["VaultoftheWardens"],
}

MDT.dungeonTotalCount[dungeonIndex] = { normal = 0 } -- TODO: Add correct count

MDT.mapPOIs[dungeonIndex] = {};

MDT.dungeonEnemies[dungeonIndex] = {};
