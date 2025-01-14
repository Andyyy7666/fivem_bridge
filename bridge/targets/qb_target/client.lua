local target = {}
local qb_target = exports["qb-target"]

local function replaceOnSelect(options)
    options.action = function(entity)
        local entityCoords = GetEntityCoords(entity)
        local playerCoords = GetEntityCoords(PlayerPedId())
        local data = {}

        data.entity = entity
        data.coords = entityCoords
        data.distance = #(entityCoords-playerCoords)

        return options.onSelect(data)
    end
end

function target:addGlobalObject(options)
    replaceOnSelect(options)
    qb_target:AddGlobalObject(options)
end

function target:addEntity(netIds, options, entities)
    replaceOnSelect(options)
    qb_target:AddTargetEntity(entities, options)
end

function target:removeEntity(netIds, optionNames, entities)
    qb_target:RemoveTargetEntity(entities, optionNames)
end

function target:removeModel(models, optionNames)
    qb_target:RemoveTargetModel(models, optionNames)
end

function target:addLocalEntity(entities, options)
    replaceOnSelect(options)
    qb_target:AddTargetEntity(entities, options)
end

function target:removeLocalEntity(entities, optionNames)
    qb_target:RemoveTargetEntity(entities, optionNames)
end

function target:addModel(models, options)
    replaceOnSelect(options)
    qb_target:AddTargetModel(models, options)
end

function target:addGlobalVehicle(options)
    replaceOnSelect(options)
    qb_target:AddGlobalVehicle({
        distance = options.distance,
        options = options
    })
end

function target:addGlobalPlayer(options)
    replaceOnSelect(options)
    qb_target:AddGlobalPlayer({
        distance = options.distance,
        options = options
    })
end

return target