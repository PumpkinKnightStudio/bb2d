

execute at @s[team=left] run execute positioned -161 ~ ~ run summon armor_stand ~ ~-1.4 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_dexplosion2","left","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}

execute at @s[team=right] run execute positioned -161 ~ ~ run summon armor_stand ~ ~-1.4 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_dexplosion2","right","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}

execute as @s[team=left] run scoreboard players operation @e[tag=unset,tag=spawn_dexplosion2,tag=left,limit=1] damagerID = @s damagerID
execute as @s[team=right] run scoreboard players operation @e[tag=unset,tag=spawn_dexplosion2,tag=right,limit=1] damagerID = @s damagerID

execute as @e[type=armor_stand,tag=unset,tag=spawn_dexplosion2] run function core:2dlogic/morph/devast_addon/state_6e

