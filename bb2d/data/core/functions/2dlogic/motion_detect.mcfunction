execute store result score @s zPos run data get entity @s Pos[2] 1.0
execute store result score @s yLoc run data get entity @s Pos[1] 1.0

# CALCULATE - LEFT OR RIGHT MOVEMENT
execute if score @s zPos < @s previousZ run scoreboard players set @s lookingDir 1
execute if score @s zPos > @s previousZ run scoreboard players set @s lookingDir 2

execute unless score @s zPos = @s previousZ run scoreboard players set @s walking 2

# RESET
scoreboard players remove @s[scores={walking=1..}] walking 1
scoreboard players operation @s previousZ = @s zPos