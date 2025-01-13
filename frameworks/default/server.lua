Fw_Default = {}

function Fw_Default:GetPlayerIdentifier(source)
    local identifierType = 'license' -- 'steam', 'discord', 'ip'
    local playerIdentifiers = GetPlayerIdentifiers(source)
    for ta, identifier in ipairs(playerIdentifiers) do
        if identifier:sub(1, 8) == (identifierType .. ':') then
            return identifier
        end
    end
    return ''
end

function Fw_Default:GetPlayerName(source)
    return GetPlayerName(source)
end