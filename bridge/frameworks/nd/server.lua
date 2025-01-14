local framework = {}
local NDCore = exports["ND_Core"]

---@param source string | number
---@return string
function framework:GetPlayerIdentifier(source)
    local player = NDCore:getPlayer(source)
    return player.identifier
end

---@param source string | number
---@return string
function framework:GetPlayerName(source)
    local player = NDCore:getPlayer(source)
    return player.fullname
end

return framework