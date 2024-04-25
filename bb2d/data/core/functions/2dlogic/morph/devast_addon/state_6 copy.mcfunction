execute at @s[team=left] run execute at @a[team=left] run execute positioned -161 ~ ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_dsphear","left","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}
execute at @s[team=right] run execute at @a[team=left] run execute positioned -161 ~ ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_dsphear","right","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}


execute as @e[type=armor_stand,tag=unset,tag=spawn_dsphear] run function core:2dlogic/morph/devast_addon/state_6s

