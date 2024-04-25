execute as @a unless score @s oid matches 0.. run function core:2dlogic/headlock/new_id

execute at @a[tag=headlock] as @e[tag=headlock,type=armor_stand] if score @s oid = @p oid run tp @p @s[type=armor_stand]

# TEMPORARTY PHYSICS
execute as @a at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p oid run execute as @s[type=armor_stand] if block ~ ~-0.4 ~ air run execute as @a at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p[scores={lookingDir=1,walking=1..}] oid run execute as @s[type=armor_stand] run tp @s ~ ~-0.3 ~-0.5

execute as @a at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p oid run execute as @s[type=armor_stand] if block ~ ~-0.4 ~ air run execute as @a at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p[scores={lookingDir=2,walking=1..}] oid run execute as @s[type=armor_stand] run tp @s ~ ~-0.3 ~0.5


execute as @a[scores={stopMoveTimer=1..,moveLocked=0}] at @s run function core:2dlogic/headlock/lock
scoreboard players remove @a[scores={stopMoveTimer=1..}] stopMoveTimer 1
execute as @a[scores={stopMoveTimer=0,moveLocked=1}] at @s run function core:2dlogic/headlock/unlock