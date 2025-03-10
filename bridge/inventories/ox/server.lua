local inventory = {}
local ox_inventory = exports.ox_inventory

function inventory.setPlayerInventory(player, data)
    ox_inventory:setPlayerInventory(player, data)
end

function inventory.forceOpenInventory(playerId, invType, data)
    ox_inventory:forceOpenInventory(playerId, invType, data)
end

function inventory.UpdateVehicle(oldPlate, newPlate)
    ox_inventory:UpdateVehicle(oldPlate, newPlate)
end

function inventory.Items(itemName)
    return ox_inventory:Items(itemName)
end

function inventory.AddItem(inv, item, count, metadata, slot, cb)
    return ox_inventory:AddItem(inv, item, count, metadata, slot, cb)
end

function inventory.GetItem(inv, item, metadata, returnsCount)
    return ox_inventory:GetItem(inv, item, metadata, returnsCount)
end

function inventory.CanCarryItem(inv, item, count, metadata)
    return ox_inventory:CanCarryItem(inv, item, count, metadata)
end

function inventory.CanCarryAmount(inv, item)
    return ox_inventory:CanCarryAmount(inv, item)
end

function inventory.CanCarryWeight(inv, weight)
    return ox_inventory:CanCarryWeight(inv, weight)
end

function inventory.SetMaxWeight(inv, maxWeight)
    ox_inventory:SetMaxWeight(inv, maxWeight)
end

function inventory.CanSwapItem(inv, firstItem, firstItemCount, testItem, testItemCount)
    return ox_inventory:CanSwapItem(inv, firstItem, firstItemCount, testItem, testItemCount)
end

function inventory.GetItemCount(inv, itemName, metadata, strict)
    return ox_inventory:GetItemCount(inv, itemName, metadata, strict)
end

function inventory.GetItemSlots(inv, item, metadata)
    return ox_inventory:GetItemSlots(inv, item, metadata)
end

function inventory.GetSlot(inv, slot)
    return ox_inventory:GetSlot(inv, slot)
end

function inventory.GetSlotForItem(inv, itemName, metadata)
    return ox_inventory:GetSlotForItem(inv, itemName, metadata)
end

function inventory.GetSlotIdWithItem(inv, itemName, metadata, strict)
    return ox_inventory:GetSlotIdWithItem(inv, itemName, metadata, strict)
end

function inventory.GetSlotIdsWithItem(inv, itemName, metadata, strict)
    return ox_inventory:GetSlotIdsWithItem(inv, itemName, metadata, strict)
end

function inventory.GetSlotWithItem(inv, itemName, metadata, strict)
    return ox_inventory:GetSlotWithItem(inv, itemName, metadata, strict)
end

function inventory.GetSlotsWithItem(inv, itemName, metadata, strict)
    return ox_inventory:GetSlotsWithItem(inv, itemName, metadata, strict)
end

function inventory.GetEmptySlot(inv)
    return ox_inventory:GetEmptySlot(inv)
end

function inventory.GetContainerFromSlot(inv, slotId)
    return ox_inventory:GetContainerFromSlot(inv, slotId)
end

function inventory.SetSlotCount(inv, slots)
    ox_inventory:SetSlotCount(inv, slots)
end

function inventory.GetInventory(inv, owner)
    return ox_inventory:GetInventory(inv, owner)
end

function inventory.GetInventoryItems(inv, owner)
    return ox_inventory:GetInventoryItems(inv, owner)
end

function inventory.InspectInventory(target, source)
    ox_inventory:InspectInventory(target, source)
end

function inventory.ConfiscateInventory(source)
    ox_inventory:ConfiscateInventory(source)
end

function inventory.ReturnInventory(source)
    ox_inventory:ReturnInventory(source)
end

function inventory.ClearInventory(inv, keep)
    ox_inventory:ClearInventory(inv, keep)
end

function inventory.Search(inv, search, item, metadata)
    return ox_inventory:Search(inv, search, item, metadata)
end

function inventory.RegisterStash(id, label, slots, maxWeight, owner, groups, coords)
    ox_inventory:RegisterStash(id, label, slots, maxWeight, owner, groups, coords)
end

function inventory.CreateTemporaryStash(properties)
    return ox_inventory:CreateTemporaryStash(properties)
end

function inventory.CustomDrop(prefix, items, coords, slots, maxWeight, instance, model)
    ox_inventory:CustomDrop(prefix, items, coords, slots, maxWeight, instance, model)
end

function inventory.CreateDropFromPlayer(playerId)
    return ox_inventory:CreateDropFromPlayer(playerId)
end

function inventory.GetCurrentWeapon(inv)
    return ox_inventory:GetCurrentWeapon(inv)
end

function inventory.SetDurability(inv, slot, durability)
    ox_inventory:SetDurability(inv, slot, durability)
end

function inventory.SetMetadata(inv, slot, metadata)
    ox_inventory:SetMetadata(inv, slot, metadata)
end

return inventory