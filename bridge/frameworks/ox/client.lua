local framework = {}
local NDCore = exports["ND_Core"]

---@return string
function framework:GetPlayerName()
    local player = NDCore:getPlayer()
    return player.fullname
end

return framework