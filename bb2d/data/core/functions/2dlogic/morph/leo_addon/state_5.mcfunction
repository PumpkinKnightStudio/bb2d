

execute at @s[team=left] run execute if score @s lookingDir matches 1 run execute positioned -161 ~1.25 ~-2 run summon armor_stand ~ ~-1.4 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_leo.rift","left","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}

execute at @s[team=left] run execute if score @s lookingDir matches 2 run execute positioned -161 ~1.25 ~2 run summon armor_stand ~ ~-1.4 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_leo.rift","left","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}


execute at @s[team=right] run execute if score @s lookingDir matches 1 run execute positioned -161 ~1.25 ~-2 run summon armor_stand ~ ~-1.4 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_leo.rift","right","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}


execute at @s[team=right] run execute if score @s lookingDir matches 2 run execute positioned -161 ~1.25 ~2 run summon armor_stand ~ ~-1.4 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["ability","spawn_leo.rift","right","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F]}


execute as @s[team=left] run scoreboard players operation @e[tag=unset,tag=spawn_leo.rift,tag=left,limit=1] damagerID = @s playerID
execute as @s[team=right] run scoreboard players operation @e[tag=unset,tag=spawn_leo.rift,tag=right,limit=1] damagerID = @s playerID





