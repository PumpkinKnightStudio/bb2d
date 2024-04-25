
execute as @s[team=left] positioned ~ ~ ~ run execute if entity @e[type=armor_stand,team=right,distance=..1.5] positioned ~ ~ ~ run function core:spells/magic/laser/collide

execute as @s[team=right] positioned ~ ~ ~ run execute if entity @e[type=armor_stand,team=left,distance=..1.5] positioned ~ ~ ~ run function core:spells/magic/laser/collide


scoreboard players add @s casted_distance 1

#particle dust 0.380 0.980 1.000 1 ~ ~ ~ 0 0 0 1 0 normal
particle enchant ~ ~ ~ 0 0 0 20 0 normal

execute if score @s lookingDir matches 2 run execute positioned ~ ~ ~0.1 if score @s casted_distance <= @s cast_distance run execute if block ~ ~ ~ #core:raycast_pass run function core:spells/magic/laser/raycast

execute if score @s lookingDir matches 1 run execute positioned ~ ~ ~-0.1 if score @s casted_distance <= @s cast_distance run execute if block ~ ~ ~ #core:raycast_pass run function core:spells/magic/laser/raycast

