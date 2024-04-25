execute as @s[team=left,type=player] at @s run execute as @a[team=left] run scoreboard players set @s speedEFA -5
execute as @s[team=right,type=player] at @s run execute as @a[team=right] run scoreboard players set @s speedEFA -5

execute as @s[team=left,type=player] at @s run execute as @a[team=left] run scoreboard players add @s[scores={speedEFTA=..10}] speedEFTA 11
execute as @s[team=right,type=player] at @s run execute as @a[team=right] run scoreboard players add @s[scores={speedEFTA=..10}] speedEFTA 11