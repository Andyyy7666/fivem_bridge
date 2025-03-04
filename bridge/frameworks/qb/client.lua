local framework = {}
local QBCore = exports["qb-core"]:GetCoreObject()

---Get Player data
---@return table
function framework.GetPlayer()
    local player = QBCore.Functions.GetPlayerData()
    local info = player.charinfo
    local lastName = info.lastname
    local firstName = info.firstname
    return {
        fullName = ("%s %s"):format(firstName, lastName),
        firstName = player.firstname,
        lastName = player.lastname,
        dob = info.birthdate,
        gender = info.gender
    }
end

---Get any money/accounts
---@param type string
---@return number
function framework.GetMoney(type)
    local player = QBCore.Functions.GetPlayerData()
    if type == "cash" then
        return player.money["cash"]
    elseif type == "bank" then
        return player.money["bank"]
    elseif type == "black" then
        return player.money["cash"] -- note: need to figure this out.
    end
end

---Get all job info for the player
---@return table
function framework.GetJobInfo()
    local player = QBCore.Functions.GetPlayerData()
    local job = player.job
    return {
        grade = job.grade.level,
        gradeName = job.grade.name,
        jobName = job.name,
        jobLabel = job.label
    }
end

---@return boolean
function framework.IsPlayerLoaded()
    return QBCore.Functions.GetPlayerData() ~= nil
end

return framework
