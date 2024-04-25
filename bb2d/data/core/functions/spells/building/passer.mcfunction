
execute as @s at @s align xy positioned ~.5 ~0.0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display,predicate=core:building_area] at @s run function core:spells/building/sort


