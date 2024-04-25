execute as @s[tag=left] at @s run execute positioned ~9 ~ ~ run execute if entity @a[team=right,distance=..1] run function core:2dlogic/morph/leo_addon/state_5l
execute as @s[tag=right] at @s run execute positioned ~9 ~ ~ run execute if entity @a[team=left,distance=..1] run function core:2dlogic/morph/leo_addon/state_5r

#execute as @s[tag=left] at @s run execute positioned ~9 ~ ~ run execute if entity @s[scores={forceExplode=1}] run function core:2dlogic/morph/leo_addon/state_5l
#execute as @s[tag=right] at @s run execute positioned ~9 ~ ~ run execute if entity @s[scores={forceExplode=1}] run function core:2dlogic/morph/leo_addon/state_5r