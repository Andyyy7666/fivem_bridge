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

---@return boolean
function framework:IsPlayerLoaded()
    return ESX.IsPlayerLoaded()
end

function framework:Progressbar(opts)
    ESX.Progressbar(opts.message, opts.length, {
        FreezePlayer = opts.FreezePlayer or false,
        animation = opts.animation or nil,
        onFinish = opts.onFinish or function() end,
        onCancel = opts.onCancel or function() end
    })
end


function framework:SearchInventory(item, count)
    local xPlayer = ESX.GetPlayerData()
    local inventory = xPlayer.inventory
    for _, v in pairs(inventory) do
        if v.name == item and v.count >= (count or 1) then
            return true
        end
    end
    return false
end

function framework:SetPlayerData(key, val)
    ESX.SetPlayerData(key, val)
end

function framework:ShowAdvancedNotification(opts)
    ESX.ShowAdvancedNotification(opts.sender, opts.subject, opts.message, opts.icon, opts.iconType or 0)
end

function framework:ShowFloatingHelpNotification(opts)
    AddTextEntry('FloatingHelpNotification', opts.message)
    SetFloatingHelpTextWorldPosition(1, opts.coords.x, opts.coords.y, opts.coords.z)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp('FloatingHelpNotification')
    EndTextCommandDisplayHelp(2, false, false, -1)
end

function framework:ShowHelpNotification(opts)
    AddTextEntry('HelpNotification', opts.message)
    BeginTextCommandDisplayHelp('HelpNotification')
    EndTextCommandDisplayHelp(0, false, true, -1)
end

function framework:ShowInventory()
    if ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'inventory') then
        ESX.UI.Menu.Close('default', GetCurrentResourceName(), 'inventory')
    else
        ESX.ShowInventory()
    end
end

function framework:ShowNotification(opts)
    ESX.ShowNotification(opts.message, opts.type or 'info', opts.time or 5000)
end

function framework:TriggerServerCallback(name, cb, ...)
    ESX.TriggerServerCallback(name, cb, ...)
end


return framework
