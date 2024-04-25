particle explosion ~ ~ ~ 0 0 0 0 5 normal @a

execute as @s[team=left] positioned ~ ~ ~ run scoreboard players operation @e[type=armor_stand,team=right,distance=..1.5] damage = @s[team=left] spellDamage
execute as @s[team=right] positioned ~ ~ ~ run scoreboard players operation @e[type=armor_stand,team=left,distance=..1.5] damage = @s[team=right] spellDamage

#execute as @s[team=left] positioned ~ ~ ~ run execute as @e[type=armor_stand,team=right,distance=..1.5] at @s run effect give @s glowing 1 1 true
#execute as @s[team=right] positioned ~ ~ ~ run execute as @e[type=armor_stand,team=left,distance=..1.5] at @s run effect give @s glowing 1 1 true

scoreboard players set @s casted_distance 1000