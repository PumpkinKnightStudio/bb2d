#Particle First

execute if score @s break matches 1 run execute if block ~-1 ~ ~ minecraft:stone run execute at @s run particle block stone ~ ~ ~ 1 1 1 1 10 normal
execute if score @s break matches 1 run execute if block ~-1 ~ ~ minecraft:cobblestone run execute at @s run particle block stone ~ ~ ~ 1 1 1 1 10 normal

#Execute Block
execute if score @s break matches 1 run execute if block ~-1 ~ ~ minecraft:cobblestone run setblock ~-1 ~ ~ minecraft:air

execute if score @s break matches 1 run execute if block ~-1 ~ ~ minecraft:stone run setblock ~-1 ~ ~ minecraft:cobblestone
execute if block ~-1 ~ ~ minecraft:cobweb run execute as @s as @e if score @s playerID = @p playerID run execute as @s[type=player] run tellraw @s ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"Cobweb can't be destroy with pickaxe ","color":"red"},{"text":"(Only sword)","color":"green"}]

#execute if block ~-1 ~ ~ minecraft:air run setblock ~-2 ~ ~ minecraft:air

## SERIES 2

execute if score @s break matches 2 run execute if block ~-1 ~ ~ minecraft:oak_log run execute at @s run particle block oak_log ~ ~ ~ 1 1 1 1 10 normal
execute if score @s break matches 2 run execute if block ~-1 ~ ~ minecraft:stripped_oak_log run execute at @s run particle block oak_log ~ ~ ~ 1 1 1 1 10 normal

#Execute Block
execute if score @s break matches 2 run execute if block ~-1 ~ ~ minecraft:stripped_oak_log run setblock ~-1 ~ ~ minecraft:air

execute if score @s break matches 2 run execute if block ~-1 ~ ~ minecraft:oak_log run setblock ~-1 ~ ~ minecraft:stripped_oak_log
