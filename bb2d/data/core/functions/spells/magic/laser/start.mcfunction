tag @s add casting

scoreboard players operation @s cast_distance = @s magic_cast
scoreboard players operation @s cast_distance *= .mul3 cast_distance
scoreboard players set @s spellDamage 40

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run scoreboard players set @s[type=minecraft:armor_stand] spellDamage 40

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run scoreboard players operation @s[type=minecraft:armor_stand] cast_distance = @p cast_distance

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand,scores={lookingDir=2}] at @s run execute positioned ~ ~1 ~0.99 run function core:spells/magic/laser/raycast

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand,scores={lookingDir=1}] at @s run execute positioned ~ ~1 ~-0.99 run function core:spells/magic/laser/raycast

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run scoreboard players set @s casted_distance 0



tag @s remove casting
scoreboard players reset .distance cast_distance
scoreboard players set @s cast_distance 0
scoreboard players set @s spellDamage 0