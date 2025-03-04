local function getBridge(bridgeType)
    local context = cache.context
    local bridge = ConfigBridge[bridgeType]

    for i=1, #bridge do
        local info = bridge[i]
        if GetResourceState(info.resource):find("start") then
            return ("bridge.%s.%s.%s"):format(bridgeType, info.folder, context)
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
