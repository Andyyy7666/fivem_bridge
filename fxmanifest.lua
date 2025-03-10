name "fivem_bridge"
description "Add compatibility with frameworks, targets, inventories, etc."
version "0.0.1"
repository "https://github.com/Andyyy7666/fivem_bridge/tree/main"

-- If using this inside a resource, add everything below to the fxmanfiest.lua

fx_version "cerulean"
game "gta5"
lua54 "yes"
use_experimental_fxv2_oal "yes"
dependency "ox_lib"

files {
    "bridge/**/**/client.lua"
}

shared_scripts {
    "@ox_lib/init.lua",
    "bridge/config.lua",
    "bridge/init.lua"
}

client_scripts {
    "bridge/**/cl_events.lua"
}
