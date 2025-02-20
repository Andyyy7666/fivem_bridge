local framework = {}
local ESX = exports["es_extended"]:getSharedObject()

---@param source string | number
---@return string
function framework:GetPlayerIdentifier(source)
    local xPlayer = self.ESX.GetPlayerFromId(source)
    return xPlayer.getIdentifier()
end

---@param source string | number
---@return string
function framework:GetPlayerName(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    return xPlayer.getName()
end

---@param job string
---@param jobGrade number
---@return boolean
function framework:DoesJobExist(job, jobGrade)
    return ESX.DoesJobExist(job, jobGrade)
end

---@return table
function framework:GetJobs()
    local arr = {}
    for k, v in pairs(ESX.GetJobs()) do
        table.insert(arr, CreateJob(v.id, v.name, v.label, v.grade, v.grade_name, v.grade_label, v.grade_salary))
    end
    return arr
end

return framework