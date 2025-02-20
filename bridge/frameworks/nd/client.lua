local framework = {}
local NDCore = exports["ND_Core"]

---@return string
function framework:GetPlayerName()
    local player = NDCore:getPlayer()
    return player.fullname
end

---@return string
function framework:GetFirstName()
    local player = NDCore:getPlayer()
    return player.firstname
end

---@return string
function framework:GetLastName()
    local player = NDCore:getPlayer()
    return player.lastname
end

---@return number
function framework:GetCash()
    local player = NDCore:getPlayer()
    return player.cash
end

---@return number
function framework:GetBank()
    local player = NDCore:getPlayer()
    return player.bank
end

---@return number
function framework:GetBlackCash()
    if GetResourceState("ox_inventory"):find("start") then
        local <const> ox_inventory = exports.ox_inventory
        local <const> usingDirtyMoney = ox_inventory:Items("black_money")
        return ox_inventory:GetItemCount("black_money")
    end

    -- ND doesn't have "dirty" or "black" by default, for realism normal cash is used.
    local player = NDCore:getPlayer()
    return player.cash
end

---@return string
function framework:GetDOB()
    local player = NDCore:getPlayer()
    return player.dob
end

---@return number
function framework:GetJobGrade()
    local player = NDCore:getPlayer()
    return player?.jobInfo?.rank or 0
end

---@return string
function framework:GetJobGradeName()
    local player = NDCore:getPlayer()
    return player?.jobInfo?.rankName or ""
end

---@return string
function framework:GetJobName()
    local player = NDCore:getPlayer()
    return player.job
end

---@return string
function framework:GetJobLabel()
    local player = NDCore:getPlayer()
    return player?.jobInfo?.label or player.job
end

---@return table
function framework:GetCoords()
    return ESX.PlayerData.coords
end

---@return string
function framework:GetSex()
    local player = NDCore:getPlayer()
    return player.gender
end

return framework