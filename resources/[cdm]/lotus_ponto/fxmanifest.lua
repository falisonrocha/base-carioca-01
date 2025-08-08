fx_version 'cerulean'
lua54 'yes'
game 'gta5'

name 'lotus_ponto'
author 'likizao'

dependencies {
  '/server:5181',
  '/onesync',
  'vrp',
}

shared_scripts {
  '@vrp/lib/utils.lua',
  'shared/*.lua'
}

client_scripts {
  'client/utils.lua',
  'client/client.lua'
}

ui_page 'build/index.html'
files { 'build/***' }
