
#scoreboard players set @s stopMoveTimer 10
scoreboard players set @s[scores={projectile_aim=0}] ink_aim 60

execute as @s at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~-9 1 1


scoreboard players operation @s tragecZ = @s projectile_aim

## SHOT LEVEL

#execute if score @s projectile_aim matches 2..12 run function core:spells/physical/projectile/attack1


#execute if score @s projectile_aim matches 13..25 run function core:spells/physical/projectile/attack2

#execute if score @s projectile_aim matches 26.. run function core:spells/physical/projectile/attack3

# NEW MOTION APPLIER
execute if score @s projectile_aim matches 2.. run function core:spells/physical/projectile/attack3


#scoreboard players set @s projectile_aim 0

execute as @s at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

execute if score @s spell_id matches 3 run scoreboard players remove @s item_351 1
