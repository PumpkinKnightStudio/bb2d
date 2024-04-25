execute as @s run execute if score @s walking matches 1.. run execute if score @s lookingDir matches 1 run execute as @s at @s run tp @s[type=armor_stand] ~ ~ ~ 180 ~

execute as @s run execute if score @s walking matches 1.. run execute if score @s lookingDir matches 2 run execute as @s at @s run tp @s[type=armor_stand] ~ ~ ~ -0 ~

execute if score @s turningRight matches 1.. run execute as @s at @s run scoreboard players set @s walkingAnim 18

execute if score @s turningLeft matches 1.. run execute as @s at @s run scoreboard players set @s walkingAnim 18

execute if score @s turningLeft matches 0 run execute if score @s turningRight matches 0 run execute as @s at @s run scoreboard players set @s[scores={walkingAnim=11..}] walkingAnim 10


execute as @s run execute if score @s walking matches 0 run execute if score @s lookingDir matches 1 run execute as @s at @s run tp @s ~ ~ ~ 180 ~

execute as @s run execute if score @s walking matches 0 run execute if score @s lookingDir matches 2 run execute as @s at @s run tp @s ~ ~ ~ -0 ~

