local framework = {}

---@return string
function framework:GetPlayerName()
    return GetPlayerName(PlayerId())
end

return framework