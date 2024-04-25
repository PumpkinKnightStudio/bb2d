execute if entity @s[team=left] run scoreboard players set @s convert_zombie 1
execute if entity @s as @e at @s if score @s playerID = @p[scores={convert_zombie=1}] playerID if entity @s[type=minecraft:armor_stand] run kill @s
execute if entity @s as @e at @s if score @s petsID = @p[scores={convert_zombie=1}] playerID if entity @s[type=minecraft:armor_stand] run kill @s
team join right @s[scores={convert_zombie=1}]
clear @s carrot_on_a_stick
clear @s shield
scoreboard players set @s useCustomHead 11
execute if entity @s[scores={convert_zombie=1}] at @s run function core:setup/make_self
scoreboard players set @s convert_zombie 0