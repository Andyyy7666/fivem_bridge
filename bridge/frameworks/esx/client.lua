local framework = {}
local ESX = exports["es_extended"]:getSharedObject()

---@return string
function framework:GetPlayerName()
    local playerData = ESX.PlayerData
    return playerData.name
end

---@return string
function framework:GetFirstName()
    return ESX.PlayerData.firstName
end

---@return string
function framework:GetLastName()
    return ESX.PlayerData.lastName
end

---@return number
function framework:GetCash()
    return ESX.PlayerData.accounts.Money
end

---@return number
function framework:GetBank()
    return ESX.PlayerData.accounts.Bank
end

---@return number
function framework:GetBlackCash()
    return ESX.PlayerData.accounts.Black
end

---@return string
function framework:GetDOB()
    return ESX.PlayerData.dateofbirth
end

---@return number
function framework:GetJobGrade()
    return ESX.PlayerData.job.grade
end

---@return string
function framework:GetJobGradeName()
    return ESX.PlayerData.job.grade_name
end

---@return string
function framework:GetJobName()
    return ESX.PlayerData.job.name
end

---@return string
function framework:GetJobLabel()
    return ESX.PlayerData.job.label
end

---@return table
function framework:GetCoords()
    return ESX.PlayerData.coords
end

---@return string
function framework:GetSex()
    return ESX.PlayerData.sex
end


return framework