execute store result score @s zPos run data get entity @s Pos[2] 10.0

scoreboard players operation @s previousZ = @s zPos
scoreboard players operation @s zPos = @s previousZ

