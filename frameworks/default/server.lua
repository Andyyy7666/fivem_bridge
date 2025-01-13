Fw_Default = {}

---@param source string | number
function Fw_Default:GetPlayerIdentifier(source)
    local identifierType = 'license' -- 'license', 'license2', 'steam', 'discord', 'ip', 'xbl', 'live'
    return GetPlayerIdentifierByType(source --[[@as string]], identifierType)
end

---@param source string | number
function Fw_Default:GetPlayerName(source)
    return GetPlayerName(source --[[@as string]])
end
