execute as @a[scores={playerID=1..}] at @s run function core:2dlogic/builder/standby
execute as @a[scores={playerID=1..}] at @s run function bb2d_jmc:builderutil/calleft
tp @e[type=minecraft:block_display,scores={buildingSwitch=0}] ~ ~-20 ~
kill @e[type=minecraft:block_display,scores={buildingSwitch=0}]