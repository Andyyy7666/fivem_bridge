Fw_ESXBridge = {}
Fw_ESXBridge.ESX = exports["es_extended"]:getSharedObject()
AddEventHandler("esx:setPlayerData", function(key, val, last)
    if GetInvokingResource() ~= "es_extended" then
        return
    end

    ESX.PlayerData[key] = val
end)
RegisterNetEvent("esx:playerLoaded", function(xPlayer)
    ESX.PlayerData = xPlayer
    while not ESX.PlayerData.ped or not DoesEntityExist(ESX.PlayerData.ped) do Wait(0) end
    ESX.PlayerLoaded = true
end)
RegisterNetEvent("esx:onPlayerLogout", function()
    ESX.PlayerLoaded = false
    ESX.PlayerData = {}
end)

---@return string
function Fw_ESXBridge:GetPlayerName()
    local playerData = self.ESX.PlayerData
    return playerData.firstName .. ' ' .. playerData.lastName
end
