
## RANDOM TEAM ##
tellraw @a [{"text":"Setting: Using Random Team Option."}]

execute as @e[tag=team_selector] at @s run kill @s

summon armor_stand 37 5 -255 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["lobby2","team_selector2"],DisabledSlots:4144959,CustomName:'{"text":"Randoming Team","color":"gray","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}


summon armor_stand 37 5 -269 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["lobby2","team_selector2"],DisabledSlots:4144959,CustomName:'{"text":"Randoming Team","color":"gray","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}


scoreboard players set .useRandomTeam gameSetting 2

#################