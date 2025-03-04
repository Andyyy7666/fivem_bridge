local function getBridge(bridgeType)
    local context = IsDuplicityVersion() and "server" or "client"

    for resource, bridge in pairs(Config[bridgeType]) do
        if GetResourceState(resource):find("start") then
            return ("bridge.%s.%s.%s"):format(bridgeType, bridge, context)
        end
    end

    return ("bridge.%s.%s.%s"):format(bridgeType, "default", context)
end

Bridge = {
    framework = lib.load(getBridge("frameworks")),
    inventory = lib.load(getBridge("inventories")),
    noti = lib.load(getBridge("notifications")),
    target = lib.load(getBridge("targets"))
}
