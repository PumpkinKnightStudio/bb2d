

execute at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p oid run execute as @s[type=armor_stand] unless block ~ ~-0.01 ~ air run execute as @a at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p oid run tag @p remove headlock

execute at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p oid run execute as @s[type=armor_stand] unless block ~ ~-0.01 ~ air run execute as @a at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p oid run scoreboard players set @p moveLocked 0



execute at @s as @e[tag=headlock,type=armor_stand] if score @s oid = @p oid run execute as @s[type=armor_stand] unless block ~ ~-0.01 ~ air run kill @s

