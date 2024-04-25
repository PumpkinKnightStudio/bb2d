## EXECUTING ONLY TO ARMOR_STAND


execute if score @s useCustomHead matches 0 run execute as @s[scores={respawning=0}] at @s if score @s inAction matches 0 run execute as @s run function core:2dlogic/arm_anim
#execute if score @s useCustomHead matches 1.. run execute if score @s holdingItemID matches 1.. run data merge entity @s {ShowArms:1b,Pose:{RightArm:[102f,211f,201f]}}

#execute if score @s impactCooldown matches 0.. run function core:2dlogic/damage_interceptor/cooldown

execute unless score @s stunMem matches 1 run execute if score @s impactCooldown matches 1.. run scoreboard players operation @s stunTimerCal = @s impactCooldown
execute unless score @s stunMem matches 1 run execute if score @s impactCooldown matches 1.. run scoreboard players set @s stunMem 1
#execute if score @s impactCooldown matches -10000 run scoreboard players set @s stunMem 0


#data merge entity @s[scores={impactCooldown=-9999..-1}] {ShowArms:1b,Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
#data merge entity @s[scores={impactCooldown=1..}] {ShowArms:1b,Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
data merge entity @s[scores={impactCooldown=0}] {ShowArms:1b,Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

scoreboard players remove @s[scores={impactCooldown=1..}] impactCooldown 1

scoreboard players add @s zCalibrator 1
scoreboard players set @s[scores={zCalibrator=6..}] zCalibrator 1

execute as @s[scores={zCalibrator=1}] at @s run tp @s ~ ~ ~ ~1 ~
execute as @s[scores={zCalibrator=2}] at @s run tp @s ~ ~ ~ ~ ~1
execute as @s[scores={zCalibrator=3}] at @s run tp @s ~ ~ ~ ~1 ~1
execute as @s[scores={zCalibrator=4}] at @s run tp @s ~ ~ ~ ~-1 ~
execute as @s[scores={zCalibrator=5}] at @s run tp @s ~ ~ ~ ~ ~-1
execute as @s[scores={zCalibrator=6}] at @s run tp @s ~ ~ ~ ~-1 ~-1

execute as @s[scores={respawning=1..}] run function core:2dlogic/sit_pose

execute as @s run function core:2dlogic/statue_z