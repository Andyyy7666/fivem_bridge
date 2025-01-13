Fw_ESXBridge = {}
Fw_ESXBridge.ESX = exports["es_extended"]:getSharedObject()

---@return string
function Fw_ESXBridge:GetPlayerName()
    local playerData = self.ESX.PlayerData
    return playerData.firstName .. ' ' .. playerData.lastName
end
