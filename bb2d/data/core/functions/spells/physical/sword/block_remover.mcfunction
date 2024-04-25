
## BLOCK REMOVER

execute if score @s lookingDir matches 1 run execute if block ~ ~ ~-1 minecraft:cobweb run setblock ~ ~ ~-1 minecraft:air

execute if score @s lookingDir matches 2 run execute if block ~ ~ ~1 minecraft:cobweb run setblock ~ ~ ~1 minecraft:air

execute if score @s lookingDir matches 1 run execute if block ~ ~1 ~-1 minecraft:cobweb run setblock ~ ~1 ~-1 minecraft:air

execute if score @s lookingDir matches 2 run execute if block ~ ~1 ~1 minecraft:cobweb run setblock ~ ~1 ~1 minecraft:air