execute if entity @s as @e at @s if score @s playerID = @p[scores={playerLives=0}] playerID if entity @s[type=minecraft:armor_stand] run kill @s
execute if entity @s as @e at @s if score @s petsID = @p[scores={playerLives=0}] playerID if entity @s[type=minecraft:armor_stand] run kill @s
scoreboard players set @s playerID -1
tp @s -122 8 -278 90 0
team join lobby @s
clear @s carrot_on_a_stick
clear @s shield