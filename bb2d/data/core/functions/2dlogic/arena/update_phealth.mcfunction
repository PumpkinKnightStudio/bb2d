scoreboard players operation @s healthNTCal = @s health
scoreboard players operation @s healthNTCal /= .devider healthNTCal

execute if score @s healthNTCal matches ..0 run scoreboard players operation @s healthNTCal *= .flipper healthNTCal

scoreboard players operation @s Health = @s healthNTCal