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
end

function framework:RegisterCommand(opts)
end

function framework:RegisterServerCallback(opts)
end

function framework:RegisterUsableItem(opts)
end

function framework:UseItem(src, itemName)
end

function framework:AddCash(src, amt)
end

function framework:AddBank(src, amt)
end

function framework:AddBlackCash(src, amt)
end

function framework:AddInventoryItem(src, item, count)
end

function framework:AddWeapon(src, weaponName, ammo)
end

function framework:AddWeaponAmmo(src, weaponName, ammo)
end

function framework:AddWeaponComponent(src, weaponName, cmp)
end

function framework:CanCarryItem(src, item, count)
end

function framework:CanSwapItem(src, opts)
end

function framework:ClearMeta(src, index)
end

function framework:GetMeta(src, index, subIndex)
end

function framework:GetCash(src)
end

function framework:GetBank(src)
end

function framework:GetBlackCash(src)
end

function framework:GetIdentifier(src)
end

function framework:GetInventory(src, minimal)
end

function framework:GetInventoryItem(src, item)
end

function framework:GetJob(src)
end

function framework:GetLoadout(src)
end

function framework:GetWeapon(src, weaponName)
end

function framework:GetWeaponTint(src, weaponName, weaponTintIndex)
end

function framework:GetWeight(src)

function framework:HasItem(src, item, data)
end

function framework:HasWeapon(src, weaponName)
end

function framework:HasWeaponComponent(src, weaponName, weaponCmp)
end

function framework:RemoveCash(src, amt)
end

function framework:RemoveBank(src, amt)
end

function framework:RemoveBlackCash(src, amt)
end

function framework:RemoveInventoryItem(src, item, count)
end

function framework:RemoveWeapon(src, weaponName)
end

function framework:RemoveWeaponAmmo(src, weaponName, ammo)
end

function framework:RemoveWeaponComponent(src, weaponName, weaponCmp)
end

function framework:SetMeta(src, index, value, subValue)
end

function framework:SetCash(src, amt)
end

function framework:SetBank(src, amt)
end

function framework:SetBlackCash(src, amt)
end

function framework:SetInventoryItem(src, item, count)
end

function framework:SetJob(src, name, grade)
end

function framework:SetMaxWeight(src, weight)
end

function framework:SetName(src, name)
end

function framework:SetWeaponTint(src, weaponName, weaponTintIndex)
end

function framework:ShowAdvancedNotification(src, opts)
end

function framework:ShowHelpNotification(src, opts)
end

function framework:ShowNotification(src, opts)
end



return framework