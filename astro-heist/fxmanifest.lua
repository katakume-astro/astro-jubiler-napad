fx_version 'cerulean'
game 'gta5'
lua54 "yes"


client_scripts {
	'client.lua',
	'oxtarget.lua',
	'@utility_lib/client/native.lua'
}

server_scripts {
	'server.lua',
	'@utility_lib/server/native.lua',
}

shared_scripts {
	'@es_extended/imports.lua',
}

