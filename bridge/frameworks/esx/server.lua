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

function framework:CreatePickup(opts)
    TriggerEvent('esx:addPickup', opts.type, opts.name, opts.count, opts.coords, opts.label)
end

function framework:RegisterCommand(opts)
    ESX.RegisterCommand(opts.name, opts.group, function(xPlayer, args, showError)
        opts.callback(xPlayer, args, showError)
    end, opts.suggestion)
end

function framework:RegisterServerCallback(name, cb)
    ESX.RegisterServerCallback(name, cb)
end

function framework:RegisterUsableItem(itemName, cb)
    ESX.RegisterUsableItem(itemName, cb)
end

function framework:UseItem(src, itemName)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.triggerEvent('esx:useItem', itemName)
    end
end

function framework:AddCash(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.addMoney(amt)
    end
end

function framework:AddBank(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.addAccountMoney('bank', amt)
    end
end

function framework:AddBlackCash(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.addAccountMoney('black_money', amt)
    end
end

function framework:AddInventoryItem(src, item, count)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.addInventoryItem(item, count)
    end
end

function framework:AddWeapon(src, weaponName, ammo)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.addWeapon(weaponName, ammo)
    end
end

function framework:AddWeaponAmmo(src, weaponName, ammo)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.addWeaponAmmo(weaponName, ammo)
    end
end

function framework:AddWeaponComponent(src, weaponName, cmp)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.addWeaponComponent(weaponName, cmp)
    end
end

function framework:CanCarryItem(src, item, count)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.canCarryItem(item, count)
    end
    return false
end

function framework:CanSwapItem(src, item, removeCount, addItem, addCount)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.canSwapItem(item, removeCount, addItem, addCount)
    end
    return false
end

function framework:ClearMeta(src, index)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.setMeta(index, nil)
    end
end

function framework:GetMeta(src, index, subIndex)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        local meta = xPlayer.getMeta(index)
        return subIndex and meta[subIndex] or meta
    end
    return nil
end

function framework:GetCash(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getMoney()
    end
    return 0
end

function framework:GetBank(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getAccount('bank').money
    end
    return 0
end

function framework:GetBlackCash(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getAccount('black_money').money
    end
    return 0
end

function framework:GetIdentifier(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getIdentifier()
    end
    return nil
end

function framework:GetInventory(src, minimal)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getInventory(minimal)
    end
    return {}
end

function framework:GetInventoryItem(src, item)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getInventoryItem(item)
    end
    return nil
end

function framework:GetJob(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getJob()
    end
    return nil
end

function framework:GetLoadout(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getLoadout()
    end
    return {}
end

function framework:GetWeapon(src, weaponName)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getWeapon(weaponName)
    end
    return nil
end

function framework:GetWeight(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getWeight()
    end
    return 0
end

function framework:HasItem(src, item, data)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        return xPlayer.getInventoryItem(item).count > 0
    end
    return false
end

function framework:RemoveCash(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.removeMoney(amt)
    end
end

function framework:RemoveBank(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.removeAccountMoney('bank', amt)
    end
end

function framework:RemoveBlackCash(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.removeAccountMoney('black_money', amt)
    end
end

function framework:RemoveInventoryItem(src, item, count)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.removeInventoryItem(item, count)
    end
end

function framework:RemoveWeapon(src, weaponName)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.removeWeapon(weaponName)
    end
end

function framework:SetMeta(src, index, value, subValue)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.setMeta(index, value, subValue)
    end
end

function framework:SetCash(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.setMoney(amt)
    end
end

function framework:SetBank(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.setAccountMoney('bank', amt)
    end
end

function framework:SetBlackCash(src, amt)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.setAccountMoney('black_money', amt)
    end
end

function framework:SetInventoryItem(src, item, count)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        local inventoryItem = xPlayer.getInventoryItem(item)
        if inventoryItem then
            xPlayer.setInventoryItem(item, count)
        end
    end
end

function framework:SetJob(src, name, grade)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.setJob(name, grade)
    end
end

function framework:SetMaxWeight(src, weight)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.setMaxWeight(weight)
    end
end

function framework:SetName(src, name)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        xPlayer.setName(name)
    end
end

function framework:SetWeaponTint(src, weaponName, weaponTintIndex)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        local weapon = xPlayer.getWeapon(weaponName)
        if weapon then
            xPlayer.setWeaponTint(weaponName, weaponTintIndex)
        end
    end
end

function framework:ShowAdvancedNotification(src, opts)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        TriggerClientEvent('esx:showAdvancedNotification', src, opts.sender, opts.subject, opts.message, opts.icon, opts.iconType)
    end
end

function framework:ShowHelpNotification(src, opts)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        TriggerClientEvent('esx:showHelpNotification', src, opts.message)
    end
end

function framework:ShowNotification(src, opts)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        TriggerClientEvent('esx:showNotification', src, opts.message)
    end
end

return framework
