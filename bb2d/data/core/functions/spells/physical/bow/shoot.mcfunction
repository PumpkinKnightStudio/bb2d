
#scoreboard players set @s stopMoveTimer 10
scoreboard players set @s[scores={bow_aim=0}] bow_aim 60

execute if score @s bow_aim matches 6.. run execute as @s at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~-9 1 1


scoreboard players operation @s tragecZ = @s bow_aim

## SHOT LEVEL

execute if score @s bow_aim matches 6..12 run function core:spells/physical/bow/attack1

execute if score @s bow_aim matches 13..25 run function core:spells/physical/bow/attack2

execute if score @s bow_aim matches 26.. run function core:spells/physical/bow/attack3


scoreboard players set @s bow_aim 0

execute as @s at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

