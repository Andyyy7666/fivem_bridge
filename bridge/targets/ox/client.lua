local target = {}
local ox_target = exports.ox_target

function target.disableTargeting(state)
    ox_target:disableTargeting(state)
end

function target.addGlobalOption(options)
    ox_target:addGlobalOption(options)
end

function target.removeGlobalOption(optionNames)
    ox_target:removeGlobalOption(optionNames)
end

function target.addGlobalObject(options)
    ox_target:addGlobalObject(options)
end

function target.removeGlobalObject(optionNames)
    ox_target:removeGlobalObject(optionNames)
end

function target.addGlobalPed(options)
    ox_target:addGlobalPed(options)
end

function target.removeGlobalPed(optionNames)
    ox_target:removeGlobalPed(optionNames)
end

function target.addGlobalPlayer(options)
    ox_target:addGlobalPlayer(options)
end

function target.removeGlobalPlayer(optionNames)
    ox_target:removeGlobalPlayer(optionNames)
end

function target.addGlobalVehicle(options)
    ox_target:addGlobalVehicle(options)
end

function target.removeGlobalVehicle(optionNames)
    ox_target:removeGlobalVehicle(optionNames)
end

function target.addModel(models, options)
    ox_target:addModel(models, options)
end

function target.removeModel(models, optionNames)
    ox_target:removeModel(models, optionNames)
end

function target.addEntity(netIds, options)
    ox_target:addEntity(netIds, options)
end

function target.removeEntity(netIds, optionNames)
    ox_target:removeEntity(netIds, optionNames)
end

function target.addLocalEntity(entities, options)
    ox_target:addLocalEntity(entities, options)
end

function target.removeLocalEntity(entities, optionNames)
    ox_target:removeLocalEntity(entities, optionNames)
end

function target.addSphereZone(parameters)
    ox_target:addSphereZone(parameters)
end

function target.addBoxZone(parameters)
    ox_target:addBoxZone(parameters)
end

function target.addPolyZone(parameters)
    ox_target:addPolyZone(parameters)
end

function target.removeZone(id)
    ox_target:removeZone(id)
end

return target