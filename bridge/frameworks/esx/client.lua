local framework = {}
local ESX = exports["es_extended"]:getSharedObject()

---@return string
function framework:GetPlayerName()
    return ESX.GetPlayerData().name
end

---@return string
function framework:GetFirstName()
    return ESX.GetPlayerData().firstName
end

---@return string
function framework:GetLastName()
    return ESX.GetPlayerData().lastName
end

---@return number
function framework:GetCash()
    return ESX.GetPlayerData().accounts['money']
end

---@return number
function framework:GetBank()
    return ESX.GetPlayerData().accounts['bank']
end

---@return number
function framework:GetBlackCash()
    return ESX.GetPlayerData().accounts['black_money']
end

---@return string
function framework:GetDOB()
    return ESX.GetPlayerData().dateofbirth
end

---@return number
function framework:GetJobGrade()
    return ESX.GetPlayerData().job.grade
end

---@return string
function framework:GetJobGradeName()
    return ESX.GetPlayerData().job.grade_name
end

---@return string
function framework:GetJobName()
    return ESX.GetPlayerData().job.name
end

---@return string
function framework:GetJobLabel()
    return ESX.GetJobLabel(ESX.GetPlayerData().job.name)
end

---@return vector3
function framework:GetCoords()
    local playerPed = PlayerPedId()
    return GetEntityCoords(playerPed)
end

---@return string
function framework:GetSex()
    return ESX.GetPlayerData().sex
end

---@return boolean
function framework:IsPlayerLoaded()
    return ESX.IsPlayerLoaded()
end

function framework:Progressbar(opts)
    lib.progressBar({
        duration = opts.duration or 5000,
        label = opts.label or "Processing...",
        useWhileDead = opts.useWhileDead or false,
        canCancel = opts.canCancel or true,
    })
end

---@param item string
---@param count number
---@return boolean
function framework:SearchInventory(item, count)
    local hasItem = exports.ox_inventory:Search('count', item) or 0
    return hasItem >= (count or 1)
end

---@param key string
---@param val any
function framework:SetPlayerData(key, val)
    ESX.SetPlayerData(key, val)
end

function framework:ShowAdvancedNotification(opts)
    lib.notify({
        title = opts.title or "Notification",
        description = opts.description or "",
        type = opts.type or "info"
    })
end

function framework:ShowFloatingHelpNotification(opts)
    lib.showTextUI(opts.text, {
        position = opts.position or "top-center",
        icon = opts.icon or "info"
    })
end

function framework:ShowHelpNotification(opts)
    AddTextEntry("HELP_NOTIFICATION", opts.text)
    DisplayHelpTextThisFrame("HELP_NOTIFICATION", false)
end

function framework:ShowInventory()
    exports.ox_inventory:openInventory('player')
end

function framework:ShowNotification(opts)
    lib.notify({
        description = opts.text or "",
        type = opts.type or "info"
    })
end

function framework:TriggerServerCallback(event, cb, ...)
    ESX.TriggerServerCallback(event, cb, ...)
end

return framework
