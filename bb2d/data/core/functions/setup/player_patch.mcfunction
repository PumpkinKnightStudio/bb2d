scoreboard players set @a sneakToggle 0

scoreboard players set @a damage 0

scoreboard players set @a droppedBlock 0
scoreboard players set @a playerPage 0
scoreboard players set @a currentPage 0

#scoreboard players set @a classID 0
scoreboard players set @a spellID 1
scoreboard players set @a shieldOn 0

scoreboard players set @a block_1 0
scoreboard players set @a block_30 0
scoreboard players set @a block_46 0
scoreboard players set @a block_70 0
scoreboard players set @a item_351 0


## SERIES 2
scoreboard players set @a block_17 0



# ASSIGN WEAPON ID #

# BOW ID #
scoreboard players set @a bowID 0
###################

scoreboard players set @a health 0

execute as @a run execute unless score @s armorC_Level matches 0.. run scoreboard players set @s armorC_Level 0
scoreboard players set @a useCustomHead 0
scoreboard players set @a animCooldown 0

execute as @a run scoreboard players operation @s prev_UCH = @s useCustomHead


execute as @a run function core:menu/page/page0

scoreboard players set .contest contestPoint 0
scoreboard players set .point factionPoint 0

## RESET BEFORE GAME START ##
scoreboard players set @a hana.summon.cd 0
scoreboard players set @a hana.active.nature 0

function bb2d_jmc:announcebar/refresh_other
clear @a barrier





#############################

scoreboard players set .contest contestPoint2 0
scoreboard players set .point factionPoint2 0

scoreboard players set @a[scores={playerID=1..}] axeDMGCooldown 0
scoreboard players set @a[scores={playerID=1..}] facDestination 0

execute as @a[scores={classID=3}] run scoreboard players set @s useCustomHead 1
execute as @a[scores={classID=2}] run scoreboard players set @s useCustomHead 3
execute as @a[scores={classID=4}] run scoreboard players set @s useCustomHead 2
execute as @a[scores={classID=1}] run scoreboard players set @s useCustomHead 4
execute as @a[scores={classID=5}] run scoreboard players set @s useCustomHead 5
execute as @a[scores={classID=6}] run scoreboard players set @s useCustomHead 6
execute as @a[scores={classID=7}] run scoreboard players set @s useCustomHead 7
execute as @a[scores={classID=8}] run scoreboard players set @s useCustomHead 8
execute as @a[scores={classID=9}] run scoreboard players set @s useCustomHead 9
execute as @a[scores={classID=10}] run scoreboard players set @s useCustomHead 10
execute as @a[scores={classID=12}] run scoreboard players set @s useCustomHead 12
execute as @a[scores={classID=14}] run scoreboard players set @s useCustomHead 14

## CHAPTER 2 QUEST
execute as @a[scores={classID=12}] run advancement grant @s only core:chapter_two_quest/play_devast

execute as @a[scores={classID=1}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=2}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=3}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=4}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=5}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=6}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=7}] run scoreboard players set @s chr.default.stunTime 70

execute as @a[scores={classID=8}] run scoreboard players set @s chr.default.stunTime 100
execute as @a[scores={classID=9}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=10}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=12}] run scoreboard players set @s chr.default.stunTime 70
execute as @a[scores={classID=14}] run scoreboard players set @s chr.default.stunTime 60

execute if score .type gameType matches 4 run scoreboard players set @a[team=right] useCustomHead 11

execute as @a run execute unless score @s classID matches 0.. run scoreboard players set @s classID 0

execute as @a[scores={playerID=1..}] run scoreboard players operation @s motionID = @s playerID
execute as @a[scores={classID=0}] run loot replace entity @s armor.head loot core:head

scoreboard players set @a coins 150

## UPDATE-8.1 -10000->0 #######

scoreboard players set @e[tag=model] impactCooldown 0

scoreboard players set @a impactCooldown 0

###############################
execute as @a run function core:menu/reset
execute as @a run function core:menu/page/page0

scoreboard players set @a duiCanceller 0
scoreboard players set @a friendlyFireID 0
scoreboard players set @a actionID 0

title @a actionbar {"text":"Applying Patch 2/2 (Completed)","bold":true,"color":"green"}

