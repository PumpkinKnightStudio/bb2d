#execute if score @s useCustomHead matches 0 run function core:2dlogic/player_model_armor

function core:2dlogic/player_model_armor
execute unless score @s useCustomHead = @s prev_UCH run function core:2dlogic/morph/morph_reset

execute if score @s useCustomHead matches 1.. run function core:2dlogic/player_model_morph


# NID 3
execute unless score @p moveLocked matches 1 run function core:2dlogic/statue_facing



#animate upper
function core:2dlogic/action_anim



# NID 4
## IF THERE IS DAMAGE ON ARMORSTAND -> TRANSFER TO PLAYER
scoreboard players operation @p damage = @s[type=minecraft:armor_stand,scores={damage=1..}] damage
execute if score .twoCounter arenaTime matches 2 run execute if score @s playerID = .healthUpdID healthUpdTick run tag @s add updatingHealth
execute if score .twoCounter arenaTime matches 2 run execute if score @s[type=player] playerID = .healthUpdID healthUpdTick run execute as @s at @s run function core:2dlogic/arena/update_phealth
execute if score .twoCounter arenaTime matches 2 run execute if score @s playerID = .healthUpdID healthUpdTick run execute as @s at @s run function core:2dlogic/arena/update_health
execute if score .twoCounter arenaTime matches 3 run execute if score @s playerID = .healthUpdID healthUpdTick run tag @s remove updatingHealth

# NID 5
## IF THERE IS MOTION ON ARMORSTAND -> TRANSFER TO PLAYER

execute unless score @s motionBack matches 0 run scoreboard players operation @p[scores={inMotion=0}] motionBack = @s[type=minecraft:armor_stand,scores={motionBack=1..}] motionBack

execute unless score @s motionBack matches 0 run scoreboard players operation @p[scores={inMotion=0}] motionBack = @s[type=minecraft:armor_stand,scores={motionBack=..-1}] motionBack

execute if score .usePlayerLimiter SystemSetting matches 0 run execute align x positioned ~.5 ~ ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand,tag=model] run tp @s ~-9 ~ ~
execute if score .usePlayerLimiter SystemSetting matches 1 run execute as @s at @s run execute align x positioned -161 ~ ~ run tp @s[type=armor_stand] ~ ~ ~


# NID 6
execute as @s[scores={damage=1..}] run function core:2dlogic/model_animation/impact_pose

#PATCH NO DAM RECIEVED SCORE
scoreboard players set @s[scores={damage=1..}] dam_recieved 1

execute as @s run scoreboard players remove @s[type=armor_stand,scores={motionBack=1..}] motionBack 1
execute as @s run scoreboard players add @s[type=armor_stand,scores={motionBack=..-1}] motionBack 1

scoreboard players operation @s walking = @p walking


scoreboard players remove @s[scores={devast.spin.cd=1..}] devast.spin.cd 1
scoreboard players remove @s[scores={leo.beam.cd=1..}] leo.beam.cd 1

execute if score @s impactCooldown matches 0 run execute as @s[type=armor_stand] run function core:2dlogic/walk_anim

## RESET USE CUSTOM HEAD CHECK STATUS
scoreboard players operation @s prev_UCH = @s useCustomHead