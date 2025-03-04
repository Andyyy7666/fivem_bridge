local framework = {}
local ESX = exports["es_extended"]:getSharedObject()

---Get Player data
---@return table
function framework:GetPlayer()
    local player = ESX.PlayerData
    return {
        fullName = ("%s %s"):format(player.firstName, player.lastName),
        firstName = player.firstName,
        lastName = player.lastName,
        dob = player.dateofbirth,
        gender = player.sex
    }
end

---Get any money/accounts
---@param self any
---@param type string
---@return number
function framework:GetMoney(self, type)
    local player = ESX.PlayerData
    if type == "cash" then
        return player.accounts.Money
    elseif type == "bank" then
        return player.accounts.Bank
    elseif type == "black" then
        return player.accounts.Black
    end
end

---Get all job info for the player
---@return table
function framework:GetJobInfo()
    local player = ESX.PlayerData
    return {
        grade = player.job.grade,
        gradeName = player.job.grade_name,
        jobName = player.job.name,
        jobLabel = player.job.label
    }
end

---@return boolean
function framework:IsPlayerLoaded()
    return ESX.IsPlayerLoaded()
end

return framework
