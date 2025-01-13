Fw_ESXBridge = {}
Fw_ESXBridge.ESX = exports["es_extended"]:getSharedObject()

function Fw_ESXBridge:GetPlayerIdentifier(source)
    local xPlayer = self.ESX.GetPlayerFromId(source)
    return xPlayer.getIdentifier()
end

function Fw_ESXBridge:GetPlayerName(source)
    return GetPlayerName(source)
end