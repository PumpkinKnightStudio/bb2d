## PATCH DAMAGE ##

## END SCORE REPORT



execute as @s[scores={damage=1..,duiMemory=1..}] run scoreboard players add @s duiCanceller 1
execute if score @s[scores={damage=1..,duiMemory=1..}] duiCanceller matches 2 run scoreboard players set @s duiCanceller -1



execute as @s[scores={damage=1..}] run scoreboard players set @s dam_recieved 1
#execute as @s[scores={damage=1..}] run scoreboard players set @s sc.shakeTime 5
#execute as @s[scores={sc.shakeTime=5}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.003921568627451 1 0 force @s
#execute as @s[scores={sc.shakeTime=1..4}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0 1 0 force @s
#execute as @s[scores={sc.shakeTime=1..}] run scoreboard players remove @s sc.shakeTime 1
##################

execute if score @s dodgeTimer matches 1.. run scoreboard players set @s damage 0

execute as @s[scores={damage=0}] run function core:2dlogic/damage_interceptor/miss_check

execute as @s[scores={damage=1..,damagerID=1..}] run execute unless score @s damagerID2 matches ..0 run scoreboard players operation @s damagerID2 = @s damagerID
execute as @s[scores={damage=1..}] run scoreboard players set @s damagerCD 0

## MOTION TRIGER ONLY
#execute as @a[scores={damage=1..}] unless score @s motionBack matches 0 run execute as @s run function core:2dlogic/motion/motion_back

## SOUND
execute as @s[scores={damage=1..}] run execute store result score @s voiceAct run loot spawn 320 1 -246 loot core:voice_activate
execute as @s[scores={damage=1..}] run execute store result score @s voiceID run loot spawn 320 1 -246 loot core:voice_random

## PATCH Leo
execute as @s[scores={damage=1..}] run execute if score @s useCustomHead matches 14 run scoreboard players set @s voiceAct 1

execute as @s[scores={damage=1..}] run execute if score @s voiceAct matches 1 run function core:voices/directory

## MOTION ACTIVE

## DOUBLE PATCH
execute as @s[scores={damage=1..}] unless score @s motionBack matches 0 run execute as @s run scoreboard players set @s inMotion 1
###############

execute as @s[scores={inMotion=1}] run execute unless score @s motionStill matches 1 run execute as @s run function core:2dlogic/motion/motion_back
execute as @s[scores={crowdControlF=1..}] run execute as @s run function core:2dlogic/motion/motion_back
execute as @s[scores={damage=1..}] run function core:2dlogic/damage_interceptor/combo_announce


execute as @s[scores={damage=1..}] run function core:2dlogic/damage_interceptor/cal



#scoreboard players set @s[scores={motionCooldown=1}] inMotion 0
#scoreboard players remove @s[scores={motionCooldown=1..}] motionCooldown 1

#scoreboard players set @s[tag=damagable] impactCooldown -10000