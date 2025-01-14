local framework = {}
local Ox = exports["ox_core"]

---@param source string | number
---@return string
function framework:GetPlayerIdentifier(source)
    local player = Ox.GetPlayer(source)
    return player.identifier
end

---@param source string | number
---@return string
function framework:GetPlayerName(source)
    local player = Ox.GetPlayer(source)
    return player.username
end

return framework