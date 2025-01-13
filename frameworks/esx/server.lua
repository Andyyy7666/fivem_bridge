Fw_ESXBridge = {}
Fw_ESXBridge.ESX = exports["es_extended"]:getSharedObject()

---@param source number
---@return string
function Fw_ESXBridge:GetPlayerIdentifier(source)
    local xPlayer = self.ESX.GetPlayerFromId(source)
    return xPlayer.getIdentifier()
end

---@param source number
---@return string
function Fw_ESXBridge:GetPlayerName(source)
    local xPlayer = self.ESX.GetPlayerFromId(source)
    return xPlayer.getName()
end
