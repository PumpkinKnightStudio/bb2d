scoreboard players set @e[type=minecraft:armor_stand,distance=..3,scores={lookingDir=2}] motionBack -10

scoreboard players set @e[type=minecraft:armor_stand,distance=..3,scores={lookingDir=1}] motionBack 10

execute if entity @s[team=left] run scoreboard players set @e[type=minecraft:armor_stand,distance=..3,team=right] damage 650

execute if entity @s[team=right] run scoreboard players set @e[type=minecraft:armor_stand,distance=..3,team=left] damage 650

execute positioned ~9 ~ ~ run scoreboard players operation @a[distance=..3] damagerID2 = @s damagerID2
execute positioned ~9 ~ ~ run scoreboard players operation @a[distance=..3] damagerID = @s damagerID


execute as @s[team=left] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=left,distance=..3] friendlyFireID 1
execute as @s[team=right] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=right,distance=..3] friendlyFireID 1

function core:2dlogic/arena/element/explode


kill @s