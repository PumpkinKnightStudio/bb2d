execute as @e[team=left,type=armor_stand,distance=..2] at @s as @e if score @s playerID = @p[team=left] playerID run execute as @s[type=player,team=left] run scoreboard players add @s effect.poison 2
execute as @e[team=left,type=armor_stand,distance=..2] at @s as @e if score @s playerID = @p[team=left] playerID run execute as @s[type=player,team=left] run scoreboard players add @s[scores={effect.poison=6..}] damage 40

execute as @s[tag=right] at @s run execute positioned ~10 ~1 ~ run scoreboard players operation @e[team=left,distance=0..3.1,sort=nearest] damagerID = @s damagerID