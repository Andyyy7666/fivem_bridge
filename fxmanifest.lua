fx_version "cerulean"
use_experimental_fxv2_oal "yes"
lua54 "yes"
game "gta5"
name "fivem_bridge"
version "0.0.1"
repository ""
description ""

files {
    -- gotta add the client bridge files here that are loaded.
}

shared_scripts {
    "@ox_lib/init.lua",
    "bridge/config.lua",
    "bridge/init.lua"
}

client_scripts {
    "bridge/**/cl_events.lua"
}
