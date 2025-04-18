local framework = {}
local NDCore = exports["ND_Core"]

---Get Player data
---@return table
function framework.GetPlayer()
    local player = NDCore:getPlayer()
    return {
        fullName = player.fullname,
        firstName = player.firstname,
        lastName = player.lastname,
        dob = player.dob,
        gender = player.gender
    }
end

---Get any money/accounts
---@param type string
---@return number
function framework.GetMoney(type)
    local player = NDCore:getPlayer()
    if type == "cash" then
        return player.cash
    elseif type == "bank" then
        return player.bank
    elseif type == "black" then
        if GetResourceState("ox_inventory"):find("start") then
            local ox_inventory <const> = exports.ox_inventory
            local usingDirtyMoney <const> = ox_inventory:Items("black_money")
            return usingDirtyMoney and ox_inventory:GetItemCount("black_money") or player.cash
        end
        
        -- ND doesn't have "dirty" or "black" by default, for realism normal cash is used.
        return player.cash
    end
end

---Get all job info for the player
---@return table
function framework.GetJobInfo()
    local player = NDCore:getPlayer()
    return {
        grade = player?.jobInfo?.rank or 0,
        gradeName = player?.jobInfo?.rankName or "",
        jobName = player.job,
        jobLabel = player?.jobInfo?.label or player.job
    }
end

---@return boolean
function framework.IsPlayerLoaded()
    return NDCore:getPlayer() ~= nil
end

return framework
