local framework = {}

---Get Player data
---@return table
function framework.GetPlayer()
    local player = exports.keystone:get_player_data()
    if not player then print('Player missing.') return end

    local identity = player.identity
    return {
        fullName = ("%s%s%s"):format(identity.first_name, identity.middle_name and (" " .. identity.middle_name) or "", " " .. identity.last_name)
        firstName = identity.first_name,
        -- middleName = identity.middle_name -- keystone supports optional middle names if want to include
        lastName = identity.last_name,
        dob = identity.date_of_birth,
        gender = identity.sex
        -- nationality = identity.nationality -- keystone characters have a nationality also if want to include
    }
end

---Get any money/accounts
---@param type string
---@return number
function framework.GetMoney(type)
    local player = exports.keystone:get_player_data()
    if type == "cash" then
        return exports.keystone:get_item("cash") or 0 -- export for get_item is missing in my core but ill add it asap.
    elseif type == "bank" then
        return player.accounts.general.balance or 0
    elseif type == "black" then
        return exports.keystone:get_item("dirty_cash") or 0
    end
end

---Get all job info for the player
---@return table
function framework.GetJobInfo()
    local player = exports.keystone:get_player_data()

    -- keystone uses a "roles" setup and roles can be typed by "job" will update core with a function to handle this at some point
    local player_roles = player and player.roles or {}
    local job_role = nil
    for role_id, role in pairs(player_roles) do
        if role.role_type == "job" then
            job_role = role
            job_role.id = role_id
            break
        end
    end
    local role_data = job_role and exports.keystone:get_shared_data('roles')[job_role.id] or nil
    return {
        grade = job_role and job_role.rank or 0,
        gradeName = role_data and role_data.ranks and role_data.ranks[tostring(job_role.rank)] and role_data.ranks[tostring(job_role.rank)].label or "",
        jobName = role_data and role_data.id or "unemployed",
        jobLabel = role_data and role_data.label or "Unemployed"
    }
end

---@return boolean
function framework.IsPlayerLoaded()
    local player_data = exports.keystone:get_player_data()
    return player_data and next(player_data) ~= nil
end

return framework
