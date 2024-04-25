
execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute if block ~ ~-1 ~-1 air run execute if block ~ ~ ~-1 air run setblock ~-9 ~-1 ~-1 minecraft:stone
execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute if block ~ ~-1 ~1 air run execute if block ~ ~ ~1 air run setblock ~-9 ~-1 ~1 minecraft:stone

execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute if block ~ ~-1 ~-1 air run execute unless block ~ ~ ~-1 air run setblock ~-9 ~1 ~-1 minecraft:stone
execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute if block ~ ~-1 ~1 air run execute unless block ~ ~ ~1 air run setblock ~-9 ~1 ~1 minecraft:stone


execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute unless block ~ ~-1 ~-1 air run execute if block ~ ~ ~-1 air run setblock ~-9 ~ ~-1 minecraft:stone

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute unless block ~ ~-1 ~1 air run execute if block ~ ~ ~1 air run setblock ~-9 ~ ~1 minecraft:stone

execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute unless block ~ ~-1 ~-1 air run execute unless block ~ ~ ~-1 air run execute if block ~ ~1 ~-1 air run setblock ~-9 ~1 ~-1 minecraft:stone

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute unless block ~ ~-1 ~1 air run execute unless block ~ ~ ~1 air run execute if block ~ ~1 ~1 air run setblock ~-9 ~1 ~1 minecraft:stone


execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute unless block ~ ~-1 ~-1 air run execute unless block ~ ~ ~-1 air run execute unless block ~ ~1 ~-1 air run execute if block ~ ~-1 ~ air run setblock ~-9 ~-1 ~ minecraft:stone

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute unless block ~ ~-1 ~1 air run execute unless block ~ ~ ~1 air run execute unless block ~ ~1 ~1 air run execute if block ~ ~-1 ~ air run setblock ~-9 ~-1 ~ minecraft:stone

execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute if block ~ ~-1 ~-1 air run execute if block ~ ~ ~-1 air run execute if block ~ ~1 ~-1 air run execute if block ~ ~-1 ~ air run setblock ~-9 ~-1 ~ minecraft:stone

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:shulker] run execute if block ~ ~-1 ~1 air run execute if block ~ ~ ~1 air run execute if block ~ ~1 ~1 air run execute if block ~ ~-1 ~ air run setblock ~-9 ~-1 ~ minecraft:stone
