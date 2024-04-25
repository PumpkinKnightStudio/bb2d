execute as @s[tag=lookingLeft] at @s run tp @s ~ ~ ~-0.7
execute as @s[tag=lookingRight] at @s run tp @s ~ ~ ~0.7

execute as @s[tag=left] at @s run execute if entity @a[team=right,distance=..2] run function core:2dlogic/morph/leo_addon/state_4d
execute as @s[tag=right] at @s run execute if entity @a[team=left,distance=..2] run function core:2dlogic/morph/leo_addon/state_4d