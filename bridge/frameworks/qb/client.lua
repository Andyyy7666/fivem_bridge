local framework = {}
local QBCore = exports["qb-core"]:GetCoreObject()

---@return string
function framework:GetPlayerName()
    local Player = QBCore.Functions.GetPlayerData()
    local lastName = Player.charinfo.lastname
    local firstName = Player.charinfo.firstname
    return ("%s %s"):format(firstName, lastName)
end

return framework