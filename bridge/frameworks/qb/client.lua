local framework = {}
local QBCore = exports["qb-core"]:GetCoreObject()

---@return string
function framework:GetPlayerName()
    local Player = QBCore.Functions.GetPlayerData()
    local lastName = Player.charinfo.lastname
    local firstName = Player.charinfo.firstname
    return ("%s %s"):format(firstName, lastName)
end

---@return string
function framework:GetFirstName()
    local player = QBCore.PlayerData?.charinfo
    return player.firstname
end

---@return string
function framework:GetLastName()
    local player = QBCore.PlayerData?.charinfo
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
    local player = QBCore.PlayerData?.charinfo
    return player.birthdate
end

---@return number
function framework:GetJobGrade()
    local player = QBCore.PlayerData
    return player.job.grade.level
end

---@return string
function framework:GetJobGradeName()
    local player = QBCore.PlayerData
    return player.job.grade.name
end

---@return string
function framework:GetJobName()
    local player = QBCore.PlayerData
    return player.job.name
end

---@return string
function framework:GetJobLabel()
    local player = QBCore.PlayerData
    return player.job.label
end

---@return table
function framework:GetCoords()
    return cache.coords or GetEntityCoords(cache.ped)
end

---@return string
function framework:GetSex()
    local player = QBCore.PlayerData?.charinfo
    return player.gender
end

return framework