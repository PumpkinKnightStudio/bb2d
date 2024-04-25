

scoreboard players operation @p lookingDir = @s[scores={impactCooldown=1..}] lookingDir

## UPDATE-8.1
#scoreboard players operation @s[scores={impactCooldown=-10000}] lookingDir = @p lookingDir
scoreboard players operation @s lookingDir = @p lookingDir

execute unless score @s lookingDir = @s model_prevDir run execute if score @s lookingDir matches 1 run scoreboard players set @s turningRight 8

execute unless score @s lookingDir = @s model_prevDir run execute if score @s lookingDir matches 2 run scoreboard players set @s turningLeft 8




scoreboard players operation @s model_prevDir = @s lookingDir


