local framework = {}
local QBX = exports.qbx_core

---@param source string | number
---@return string
function framework:GetPlayerIdentifier(source)
    local player = QBX:GetPlayer(source)
    return player.citizenid
end

---@param source string | number
---@return string
function framework:GetPlayerName(source)
    local player = QBX:GetPlayer(source)
    return ("%s %s"):format(player.firstname, player.lastname)
end

return framework