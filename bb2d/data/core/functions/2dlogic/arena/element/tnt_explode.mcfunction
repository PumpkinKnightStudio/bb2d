execute if entity @s[nbt={fuse:1s}] run execute positioned ~ ~ ~1 run scoreboard players set @e[type=minecraft:armor_stand,distance=..3,scores={lookingDir=2}] motionBack 10

execute if entity @s[nbt={fuse:1s}] run execute positioned ~ ~ ~1 run scoreboard players set @e[type=minecraft:armor_stand,distance=..3,scores={lookingDir=1}] motionBack -10

execute if entity @s[nbt={fuse:1s}] run execute positioned ~ ~ ~-1 run scoreboard players set @e[type=minecraft:armor_stand,distance=..3,scores={lookingDir=2}] motionBack -10

execute if entity @s[nbt={fuse:1s}] run execute positioned ~ ~ ~-1 run scoreboard players set @e[type=minecraft:armor_stand,distance=..3,scores={lookingDir=1}] motionBack 10

execute if entity @s[nbt={fuse:1s}] run scoreboard players set @e[type=minecraft:armor_stand,distance=..3] damage 650

