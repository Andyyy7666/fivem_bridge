local framework = {}
local QBCore = exports["qb-core"]:GetCoreObject()

---@param source string | number
---@return string
function framework:GetPlayerIdentifier(source)
    local Player = QBCore.Functions.GetPlayer(source)
    return Player.PlayerData.license
end

---@param source string | number
---@return string
function framework:GetPlayerName(source)
    local Player = QBCore.Functions.GetPlayer(source)
    return Player.PlayerData.name
end

return framework