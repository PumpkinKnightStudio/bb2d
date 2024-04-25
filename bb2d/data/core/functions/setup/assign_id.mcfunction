execute if entity @s[type=player] run scoreboard players add .counter playerID 1
scoreboard players operation @s playerID = .counter playerID
tag @s add assigned_id
