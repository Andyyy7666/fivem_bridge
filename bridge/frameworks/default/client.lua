local framework = {}
local loaded = false

AddEventHandler("playerSpawned", function()
    loaded = true
end)

---Get Player data
---@return table
function framework.GetPlayer()
    local name = GetPlayerName(cache.playerId)
    return {
        fullName = name,
        firstName = name,
        lastName = "",
        dob = "",
        gender = IsPedMale(cache.ped) and "Male" or "Female"
    }
end

---Get any money/accounts
---@param type string
---@return number
function framework.GetMoney(type)
    return 0
end

---Get all job info for the player
---@return table
function framework.GetJobInfo()
    local player = NDCore:getPlayer()
    return {
        grade = 0,
        gradeName = "",
        jobName = "",
        jobLabel = ""
    }
end

---@return boolean
function framework.IsPlayerLoaded()
    return loaded
end

return framework
