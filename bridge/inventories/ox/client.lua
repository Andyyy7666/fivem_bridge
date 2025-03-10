local inventory = {}
local ox_inventory = exports.ox_inventory

function inventory.openInventory(invType, data)
    ox_inventory:openInventory(invType, data)
end

function inventory.openNearbyInventory()
    ox_inventory:openNearbyInventory()
end

function inventory.closeInventory()
    ox_inventory:closeInventory()
end

function inventory.Items(itemName)
    return ox_inventory:Items(itemName)
end

function inventory.useItem(data, cb)
    ox_inventory:useItem(data, cb)
end

function inventory.useSlot(slot)
    ox_inventory:useSlot(slot)
end

function inventory.setStashTarget(id, owner)
    ox_inventory:setStashTarget(id, owner)
end

function inventory.getCurrentWeapon()
    return ox_inventory:getCurrentWeapon()
end

function inventory.displayMetadata(metadata, value)
    ox_inventory:displayMetadata(metadata, value)
end

function inventory.giveItemToTarget(serverId, slotId, count)
    ox_inventory:giveItemToTarget(serverId, slotId, count)
end

function inventory.weaponWheel(state)
    ox_inventory:weaponWheel(state)
end

function inventory.Search(search, item, metadata)
    return ox_inventory:Search(search, item, metadata)
end

function inventory.GetItemCount(itemName, metadata, strict)
    return ox_inventory:GetItemCount(itemName, metadata, strict)
end

function inventory.GetPlayerItems()
    return ox_inventory:GetPlayerItems()
end

function inventory.GetPlayerWeight()
    return ox_inventory:GetPlayerWeight()
end

function inventory.GetPlayerMaxWeight()
    return ox_inventory:GetPlayerMaxWeight()
end

function inventory.GetSlotIdWithItem(itemName, metadata, strict)
    return ox_inventory:GetSlotIdWithItem(itemName, metadata, strict)
end

function inventory.GetSlotIdsWithItem(itemName, metadata, strict)
    return ox_inventory:GetSlotIdsWithItem(itemName, metadata, strict)
end

function inventory.GetSlotWithItem(itemName, metadata, strict)
    return ox_inventory:GetSlotWithItem(itemName, metadata, strict)
end

function inventory.GetSlotsWithItem(itemName, metadata, strict)
    return ox_inventory:GetSlotsWithItem(itemName, metadata, strict)
end

return inventory