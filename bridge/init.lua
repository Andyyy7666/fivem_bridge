local function loadFile(modName)
    -- load function taken from ox_lib https://github.com/overextended/ox_lib/blob/master/imports/require/shared.lua,
    local path = './?.lua;./?/init.lua'
    local tempData = {}

    local function searchPath(name, path)
        local resource = GetCurrentResourceName()
        name = name:gsub('%.', '/')
        local tried = {}

        for template in path:gmatch('[^;]+') do
            local fileName = template:gsub('^%./', ''):gsub('?', name)
            local file = LoadResourceFile(resource, fileName)

            if file then
                tempData[1] = file
                tempData[2] = resource
                return fileName
            end

            tried[#tried + 1] = ("no file '@%s/%s'"):format(resource, fileName)
        end

        return nil, table.concat(tried, "\n\t")
    end

    local fileName, err = searchPath(modName, path)
    if not fileName then
        -- error(("file '%s' not found\n\t%s"):format(modName, err))
        return
    end

    local file = tempData[1]
    tempData[1] = nil
    return assert(load(file, ('@@%s/%s'):format(tempData[2], fileName), 't', _ENV))()
end

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
    F = loadFile(getBridge("frameworks")),
    I = loadFile(getBridge("inventories")),
    N = loadFile(getBridge("notifications")),
    T = loadFile(getBridge("targets"))
}
