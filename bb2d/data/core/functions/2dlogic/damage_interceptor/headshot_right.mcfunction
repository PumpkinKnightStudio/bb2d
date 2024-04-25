execute store result score @s damage run data get entity @e[type=arrow,sort=nearest,tag=right,limit=1] damage 20.0

execute at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1

execute at @s[team=left] as @e[team=left] if score @s playerID = @p playerID run execute as @s[type=armor_stand] at @s run function core:2dlogic/damage_interceptor/headshot_right_executor