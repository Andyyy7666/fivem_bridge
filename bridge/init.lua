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
    F = lib.load(getBridge("frameworks")),
    I = lib.load(getBridge("inventories")),
    N = lib.load(getBridge("notifications")),
    T = lib.load(getBridge("targets"))
}
