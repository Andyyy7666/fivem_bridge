fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'
name 'fivem_bridge'
version '0.0.1'
repository ''
description ''

shared_scripts {
    'config.lua',
    'init.lua'
}

server_scripts {
    '**/server.lua'
}

client_scripts {
    '**/client.lua',
    'cl_events.lua'
}
