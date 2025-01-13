local function getFrameworkBridge()
    for resource, framework in pairs(Config.frameworks) do
        if GetResourceState(resource):find("start") then
            return framework
        end
    end
    return Fw_Default
end

local function getInventoryBridge()
    for resource, inventory in pairs(Config.inventories) do
        if GetResourceState(resource):find("start") then
            return inventory
        end
    end
    return Inv_Default
end

local function getNotificationBridge()
    for resource, notification in pairs(Config.notifications) do
        if GetResourceState(resource):find("start") then
            return notification
        end
    end
    return No_OxBridge
end

Bridge = {}
function GetBridge()
    Bridge.F = getFrameworkBridge()
    Bridge.I = getInventoryBridge()
    Bridge.N = getNotificationBridge()
end
GetBridge()