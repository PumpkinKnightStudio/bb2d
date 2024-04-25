

execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e[type=#core:playerid_link_shulker] if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] align xz run function core:2dlogic/breaker/outline_ex_right

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e[type=#core:playerid_link_shulker] if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] align xz run function core:2dlogic/breaker/outline_ex_left