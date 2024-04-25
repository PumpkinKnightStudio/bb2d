setblock 62 5 -258 minecraft:sculk_shrieker
setblock 62 7 -258 minecraft:barrier

execute unless entity @e[tag=setting.health.txt] run summon armor_stand 62 5 -258 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.health.txt"],DisabledSlots:4144959,CustomName:'{"text":"Health Count","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute unless entity @e[tag=setting.health.numDisplay] run summon armor_stand 62 4.5 -258 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.health.numDisplay"],DisabledSlots:4144959,CustomName:'{"text":"%num%","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

data merge block 62 2 -258 {front_text: {messages: ['[{"score":{"name":".giving","objective":"playerLives"},"color":"aqua"},{"text":"","color":"aqua"}]','["",{"text":""}]','["",{"text":""}]','["",{"text":""}]']}}

execute as @e[tag=setting.health.numDisplay] at @s run data modify entity @s CustomName set from block 62 2 -258 front_text.messages[0]
execute unless entity @e[tag=setting.health.decrease] run summon armor_stand 63.1 4.5 -258 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.health.decrease"],DisabledSlots:4144959,CustomName:'{"text":"◄","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute unless entity @e[tag=setting.health.increase] run summon armor_stand 61.9 4.5 -258 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.health.increase"],DisabledSlots:4144959,CustomName:'{"text":"►","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

execute unless entity @e[tag=setting.button.health.decrease] run summon interaction 63.1 6.68 -258 {NoGravity:1b,Silent:1b,width:0.4f,height:0.4f,Tags:["setting.button","setting.button.health.decrease"]}
execute as @e[type=interaction,tag=setting.button.health.decrease] at @s on target run execute if score .giving playerLives matches 2.. run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=setting.button.health.decrease] on target run execute if score .giving playerLives matches 2.. run scoreboard players remove .giving playerLives 1

execute unless entity @e[tag=setting.button.health.increase] run summon interaction 61.9 6.68 -258 {NoGravity:1b,Silent:1b,width:0.4f,height:0.4f,Tags:["setting.button","setting.button.health.increase"]}
execute as @e[type=interaction,tag=setting.button.health.increase] at @s on target run execute if score .giving playerLives matches ..4 run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=setting.button.health.increase] on target run execute if score .giving playerLives matches ..4 run scoreboard players add .giving playerLives 1


#######################

setblock 62 5 -266 minecraft:sculk_shrieker
setblock 62 7 -266 minecraft:barrier

execute unless entity @e[tag=setting.arenatime.txt] run summon armor_stand 62 5 -266 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.arenatime.txt"],DisabledSlots:4144959,CustomName:'{"text":"Arena Timer","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute unless entity @e[tag=setting.arenatime.numDisplay] run summon armor_stand 62 4.5 -266 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.arenatime.numDisplay"],DisabledSlots:4144959,CustomName:'{"text":"%arenatime%","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

data merge block 62 2 -266 {front_text: {messages: ['[{"score":{"name":".arenaMaxTime","objective":"arenaTime"},"color":"aqua"},{"text":"","color":"aqua"}]','["",{"text":""}]','["",{"text":""}]','["",{"text":""}]']}}

execute as @e[tag=setting.arenatime.numDisplay] at @s run data modify entity @s CustomName set from block 62 2 -266 front_text.messages[0]
execute unless entity @e[tag=setting.arenatime.decrease] run summon armor_stand 61.9 4.5 -266 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.arenatime.decrease"],DisabledSlots:4144959,CustomName:'{"text":"◄","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute unless entity @e[tag=setting.arenatime.increase] run summon armor_stand 63.1 4.5 -266 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.arenatime.increase"],DisabledSlots:4144959,CustomName:'{"text":"►","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

execute unless entity @e[tag=setting.button.arenatime.decrease] run summon interaction 61.9 6.68 -266 {NoGravity:1b,Silent:1b,width:0.4f,height:0.4f,Tags:["setting.button","setting.button.arenatime.decrease"]}
execute as @e[type=interaction,tag=setting.button.arenatime.decrease] at @s on target run execute if score .arenaMaxTime arenaTime matches 1500.. run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=setting.button.arenatime.decrease] on target run execute if score .arenaMaxTime arenaTime matches 1500.. run scoreboard players remove .arenaMaxTime arenaTime 500

execute unless entity @e[tag=setting.button.arenatime.increase] run summon interaction 63.1 6.68 -266 {NoGravity:1b,Silent:1b,width:0.4f,height:0.4f,Tags:["setting.button","setting.button.arenatime.increase"]}
execute as @e[type=interaction,tag=setting.button.arenatime.increase] at @s on target run execute if score .arenaMaxTime arenaTime matches ..8500 run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=setting.button.arenatime.increase] on target run execute if score .arenaMaxTime arenaTime matches ..8500 run scoreboard players add .arenaMaxTime arenaTime 500

#######################

setblock 60 5 -266 minecraft:sculk_shrieker
setblock 60 7 -266 minecraft:barrier

execute unless entity @e[tag=setting.autoBridge.txt] run summon armor_stand 60 5 -266 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.autoBridge.txt"],DisabledSlots:4144959,CustomName:'{"text":"Auto Bridge","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute unless entity @e[tag=setting.autoBridge.numDisplay] run summon armor_stand 60 4.5 -266 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.autoBridge.numDisplay"],DisabledSlots:4144959,CustomName:'{"text":"%autoBridge%","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

execute if score .autoBridge gameSetting matches 0 run data merge block 60 2 -266 {front_text:{messages:['{"text":"NONE","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":""}','{"text":""}','{"text":""}']}}
execute if score .autoBridge gameSetting matches 1 run data merge block 60 2 -266 {front_text:{messages:['{"text":"STONE","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":""}','{"text":""}','{"text":""}']}}


execute as @e[tag=setting.autoBridge.numDisplay] at @s run data modify entity @s CustomName set from block 60 2 -266 front_text.messages[0]
execute unless entity @e[tag=setting.autoBridge.decrease] run summon armor_stand 60.1 4.2 -266 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.autoBridge.decrease"],DisabledSlots:4144959,CustomName:'{"text":"◄","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute unless entity @e[tag=setting.autoBridge.increase] run summon armor_stand 60.9 4.2 -266 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Invisible:1b,PersistenceRequired:0b,Tags:["mode_setting","setting.autoBridge.increase"],DisabledSlots:4144959,CustomName:'{"text":"►","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

execute unless entity @e[tag=setting.button.autoBridge.decrease] run summon interaction 60.1 6.38 -266 {NoGravity:1b,Silent:1b,width:0.4f,height:0.4f,Tags:["setting.button","setting.button.autoBridge.decrease"]}
execute as @e[type=interaction,tag=setting.button.autoBridge.decrease] at @s on target run execute if score .autoBridge gameSetting matches 1 run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=setting.button.autoBridge.decrease] on target run execute if score .autoBridge gameSetting matches 1 run scoreboard players remove .autoBridge gameSetting 1

execute unless entity @e[tag=setting.button.autoBridge.increase] run summon interaction 60.9 6.38 -266 {NoGravity:1b,Silent:1b,width:0.4f,height:0.4f,Tags:["setting.button","setting.button.autoBridge.increase"]}
execute as @e[type=interaction,tag=setting.button.autoBridge.increase] at @s on target run execute if score .autoBridge gameSetting matches 0 run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 1
execute as @e[type=interaction,tag=setting.button.autoBridge.increase] on target run execute if score .autoBridge gameSetting matches 0 run scoreboard players add .autoBridge gameSetting 1





scoreboard players operation match.maxTime scoreboard.game.two = .arenaMaxTime arenaTime
scoreboard players operation player.lives scoreboard.game.two = .giving playerLives
execute as @e[type=interaction,tag=setting.button] run data remove entity @s interaction

execute store result bossbar minecraft:faction_spawn max run scoreboard players get .arenaMaxTime arenaTime