execute at @s[type=armor_stand,tag=model,team=left] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_cgrand","left","unset","req_delete","damagable"],DisabledSlots:4144959,Rotation:[-90F,0F]}
execute at @s[type=armor_stand,tag=model,team=right] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_cgrand","right","unset","req_delete","damagable"],DisabledSlots:4144959,Rotation:[-90F,0F]}


execute as @s[type=player] run tag @s add clock.grand.link
execute as @e[type=armor_stand,tag=unset,tag=spawn_cgrand] run function core:2dlogic/morph/clock_addon/state_7s
