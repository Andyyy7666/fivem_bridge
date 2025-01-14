local target = {}
local ox_target = exports.ox_target

function target:addGlobalObject(options)
    ox_target:addGlobalObject(options)
end

function target:addEntity(netIds, options)
    ox_target:addEntity(netIds, options)
end

function target:removeEntity(netIds, optionNames)
    ox_target:removeEntity(netIds, optionNames)
end

function target:removeModel(models, optionNames)
    ox_target:removeModel(models, optionNames)
end

function target:addLocalEntity(entities, options)
    ox_target:addLocalEntity(entities, options)
end

function target:removeLocalEntity(entities, optionNames)
    ox_target:removeLocalEntity(entities, optionNames)
end

function target:addModel(models, options)
    ox_target:addModel(models, options)
end

function target:addGlobalVehicle(options)
    ox_target:addGlobalVehicle(options)
end

function target:addGlobalPlayer(options)
    ox_target:addGlobalPlayer(options)
end

return target