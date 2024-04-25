execute at @s[type=armor_stand,team=left,tag=model,scores={lookingDir=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_cdum","left","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}
execute at @s[type=armor_stand,team=left,tag=model,scores={lookingDir=2}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_cdum","left","unset","req_delete"],DisabledSlots:4144959,Rotation:[0F,0F]}

execute at @s[type=armor_stand,team=right,tag=model,scores={lookingDir=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_cdum","right","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}
execute at @s[type=armor_stand,team=right,tag=model,scores={lookingDir=2}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_cdum","right","unset","req_delete"],DisabledSlots:4144959,Rotation:[0F,0F]}

execute as @s[type=player] run tag @s add clock.tp.setup
execute as @e[type=armor_stand,tag=unset,tag=spawn_cdum] run function core:2dlogic/morph/clock_addon/state_6s

scoreboard players set @s[type=player] clockMaker.timer.tp 200