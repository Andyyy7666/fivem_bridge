local framework = {}
local Ox = require "@ox_core.lib.init"

---Get Player data
---@return table
function framework.GetPlayer()
    local player = Ox.GetPlayer()
    local firstName = player.get("firstName")
    local lastName = player.get("lastName")
    return {
        fullName = ("%s %s"):format(firstName, lastName),
        firstName = firstName,
        lastName = lastName,
        dob = player.get("date"),
        gender = player.get("gender")
    }
end

---Get any money/accounts
---@param type string
---@return number
function framework.GetMoney(type)
    local player = Ox.GetPlayer()
    local <const> ox_inventory = exports.ox_inventory

    if type == "cash" then
        return ox_inventory:GetItemCount("money")
    elseif type == "bank" then
        return 0 -- note: Don't think ox_core has this on client (might have to do a callback to server and get account from there)
    elseif type == "black" then
        if not GetResourceState("ox_inventory"):find("start") then
            return ox_inventory:GetItemCount("money")
        end

        local <const> usingDirtyMoney = ox_inventory:Items("black_money")
        return usingDirtyMoney and ox_inventory:GetItemCount("black_money") or ox_inventory:GetItemCount("money")
    end
end

---Get all job info for the player
---@return table
function framework.GetJobInfo()
    local player = Ox.GetPlayer()
    local jobName, jobGrade = player.getGroupByType("job")
    return {
        grade = jobGrade,
        gradeName = jobGrade,
        jobName = jobName,
        jobLabel = jobName
    }
end

---@return boolean
function framework.IsPlayerLoaded()
    return Ox.GetPlayer() ~= nil
end

return framework
