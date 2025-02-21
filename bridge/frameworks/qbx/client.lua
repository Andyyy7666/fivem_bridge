require("@qbx_core/modules/playerdata")
local framework = {}
local qbx_core = exports.qbx_core

local cashAmount = QBX.PlayerData.money.cash or 0
local bankAmount = QBX.PlayerData.money.bank or 0

RegisterNetEvent('hud:client:OnMoneyChange', function(type, amount, isMinus)
    cashAmount = QBX.PlayerData.money.cash
    bankAmount = QBX.PlayerData.money.bank
end)

---@return string
function framework:GetPlayerName()
    local player = QBX.PlayerData?.charinfo
    return ("%s %s"):format(player.firstname, player.lastname)
end

---@return string
function framework:GetFirstName()
    local player = QBX.PlayerData?.charinfo
    return player.firstname
end

---@return string
function framework:GetLastName()
    local player = QBX.PlayerData?.charinfo
    return player.lastname
end

---@return number
function framework:GetCash()
    return cashAmount
end

---@return number
function framework:GetBank()
    return bankAmount
end

---@return number
function framework:GetBlackCash()
    if GetResourceState("ox_inventory"):find("start") then
        local <const> ox_inventory = exports.ox_inventory
        local <const> usingDirtyMoney = ox_inventory:Items("black_money")
        return ox_inventory:GetItemCount("black_money")
    end
    
    return cashAmount
end

---@return string
function framework:GetDOB()
    local player = QBX.PlayerData?.charinfo
    return player.birthdate
end

---@return number
function framework:GetJobGrade()
    local player = QBX.PlayerData
    return player.job.grade.level
end

---@return string
function framework:GetJobGradeName()
    local player = QBX.PlayerData
    return player.job.grade.name
end

---@return string
function framework:GetJobName()
    local player = QBX.PlayerData
    return player.job.name
end

---@return string
function framework:GetJobLabel()
    local player = QBX.PlayerData
    return player.job.label
end

---@return table
function framework:GetCoords()
    return cache.coords or GetEntityCoords(cache.ped)
end

---@return string
function framework:GetSex()
    local player = QBX.PlayerData?.charinfo
    return player.gender
end

return framework