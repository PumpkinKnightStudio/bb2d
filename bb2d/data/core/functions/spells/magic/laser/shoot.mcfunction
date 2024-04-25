
#scoreboard players set @s stopMoveTimer 10
scoreboard players set @s[scores={magic_cast=0}] magic_cast 60

execute if score @s magic_cast matches 6.. run execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~-9 1 1


#scoreboard players operation @s tragecZ = @s bow_aim

## SHOT LEVEL

execute if score @s magic_cast matches 6.. run function core:spells/magic/laser/start

#execute if score @s magic_cast matches 13..25 run function core:spells/physical/bow/attack2

#execute if score @s magic_cast matches 26.. run function core:spells/physical/bow/attack3




execute unless score @s useCustomHead matches 3 run scoreboard players set @s magic_cast 0


execute as @s at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

