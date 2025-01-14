local framework = {}
local ESX = exports["es_extended"]:getSharedObject()

---@return string
function framework:GetPlayerName()
    local playerData = ESX.PlayerData
    return ("%s %s"):format(playerData.firstName, playerData.lastName)
end

return framework