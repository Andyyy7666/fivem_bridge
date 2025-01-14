local framework = {}

---@param source string | number
---@return string
function framework:GetPlayerIdentifier(source)
    local identifierType = "license" -- license, license2, steam, discord, ip, xbl, live
    return GetPlayerIdentifierByType(source --[[@as string]], identifierType)
end

---@param source string | number
---@return string
function framework:GetPlayerName(source)
    return GetPlayerName(source --[[@as string]])
end

return framework