local framework = {}
local ESX = exports["es_extended"]:getSharedObject()

---@param source string | number
---@return string
function framework:GetPlayerIdentifier(source)
    local xPlayer = self.ESX.GetPlayerFromId(source)
    return xPlayer.getIdentifier()
end

---@param source string | number
---@return string
function framework:GetPlayerName(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    return xPlayer.getName()
end

return framework