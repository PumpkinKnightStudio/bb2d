scoreboard players operation @s[type=minecraft:armor_stand] inAction = @p inAction
scoreboard players operation @s[type=minecraft:armor_stand] bow_aim = @p bow_aim
scoreboard players operation @s[type=minecraft:armor_stand] sword_swing = @p sword_swing
scoreboard players operation @s[type=minecraft:armor_stand] magic_cast = @p magic_cast

scoreboard players operation @s[type=minecraft:armor_stand] drinkingPotion = @p drinkingPotion
scoreboard players operation @s[type=minecraft:armor_stand] drink_anim = @p drink_anim

scoreboard players operation @s[type=minecraft:armor_stand] shieldOn = @p shieldOn
scoreboard players operation @s[type=minecraft:armor_stand] shieldSlot = @p shieldSlot
scoreboard players operation @s[type=minecraft:armor_stand] respawning = @p respawning
scoreboard players operation @s[type=minecraft:armor_stand] switchingItem = @p switchingItem
#scoreboard players operation @s[type=minecraft:armor_stand] projectile_aim = @p projectile_aim
scoreboard players operation @s[type=minecraft:armor_stand] projectile_aim = @p projectile_aim

scoreboard players operation @s[type=minecraft:armor_stand] bowID = @p bowID
#scoreboard players operation @p motionID = @s[type=minecraft:armor_stand] motionID

scoreboard players operation @s[type=minecraft:armor_stand] buildingSwitch = @p buildingSwitch

## EXPERIMENTAL ###########################


#scoreboard players operation @p impactCooldown = @s[type=minecraft:armor_stand] impactCooldown
#execute if score @s[type=minecraft:armor_stand] impactCooldown > @p impactCooldown run scoreboard players operation @p impactCooldown = @s[type=minecraft:armor_stand] impactCooldown
#execute if score @s[type=minecraft:armor_stand] impactCooldown < @p impactCooldown run scoreboard players operation @s[type=minecraft:armor_stand] impactCooldown = @p impactCooldown
execute if score @s[type=minecraft:armor_stand] impactCooldown matches ..1 run scoreboard players operation @s[type=minecraft:armor_stand] impactCooldown = @p impactCooldown
execute if score @s[type=minecraft:armor_stand] impactCooldown matches 2.. run scoreboard players operation @p impactCooldown = @s[type=minecraft:armor_stand] impactCooldown
###########################################

scoreboard players operation @s[type=minecraft:armor_stand] stunted = @p stunted
scoreboard players operation @s[type=minecraft:armor_stand] stunt_immune = @p stunt_immune
scoreboard players operation @s[type=minecraft:armor_stand] dam_recieved = @p dam_recieved

#scoreboard players operation @s[type=block_display] buildingSwitch = @p buildingSwitch
scoreboard players operation @s[type=block_display] block = @p block
scoreboard players operation @s[type=block_display] sneakToggle = @p sneakToggle

## SERIES 2

scoreboard players operation @s[type=block_display] break = @p break

scoreboard players operation @s[type=minecraft:armor_stand] stunted = @p stunted

# Morph Component #
scoreboard players operation @s[type=minecraft:armor_stand] useCustomHead = @p useCustomHead
scoreboard players operation @s[type=minecraft:armor_stand] animate = @p animate
scoreboard players operation @s[type=minecraft:armor_stand] animateMax = @p animateMax
scoreboard players operation @s[type=minecraft:armor_stand] yChangeID = @p yChangeID

# MIGHT BE REDUCEABLE BY ASSIGN 0 AT THE START OF THE GAME
scoreboard players operation @s[type=minecraft:armor_stand] animCooldown = @p animCooldown

execute if score @s useCustomHead matches 1 run function core:2dlogic/score_bridge/werewolf
execute if score @s useCustomHead matches 2 run scoreboard players operation @s[type=minecraft:armor_stand] actionID = @p actionID
execute if score @s useCustomHead matches 3 run function core:2dlogic/score_bridge/guru
execute if score @s useCustomHead matches 4 run function core:2dlogic/score_bridge/bull
#execute if score @s useCustomHead matches 4 run scoreboard players operation @s[type=minecraft:armor_stand] animateSysTime = @p animateSysTime
execute if score @s useCustomHead matches 5 run function core:2dlogic/score_bridge/flag
execute if score @s useCustomHead matches 6 run function core:2dlogic/score_bridge/orc
execute if score @s useCustomHead matches 7 run function core:2dlogic/score_bridge/hana
execute if score @s useCustomHead matches 8 run function core:2dlogic/score_bridge/cg
execute if score @s useCustomHead matches 9 run function core:2dlogic/score_bridge/clock
execute if score @s useCustomHead matches 10 run function core:2dlogic/score_bridge/rana
execute if score @s useCustomHead matches 11 run function core:2dlogic/score_bridge/ghasklle
execute if score @s useCustomHead matches 12 run function core:2dlogic/score_bridge/devast
execute if score @s useCustomHead matches 14 run function core:2dlogic/score_bridge/leo
execute if score @s useCustomHead matches 15 run function core:2dlogic/score_bridge/kaguno_aikiria
scoreboard players operation @s[type=minecraft:armor_stand] holdingItemID = @p holdingItemID

scoreboard players operation @s[type=minecraft:armor_stand] globalSoundRandom = @p globalSoundRandom

scoreboard players operation @s[type=minecraft:zombie,tag=respawner] facDestination = @p facDestination
scoreboard players operation @s[type=minecraft:zombie,tag=respawner] respawnModel = @p respawnModel

scoreboard players operation @s[type=minecraft:armor_stand] skillCDRedux = @p skillCDRedux
scoreboard players operation @s[type=minecraft:armor_stand] skillCDTimer = @p skillCDTimer
#scoreboard players operation @p petsID = @s[type=minecraft:armor_stand] petsID
scoreboard players operation @p dealingDMG = @s[type=minecraft:armor_stand] dealingDMG
scoreboard players operation @s[type=minecraft:armor_stand] dmgAddition = @p dmgAddition
scoreboard players operation @s[type=minecraft:armor_stand] dmgDealCal = @p dmgDealCal



## for reference only
scoreboard players operation @p chr.ult.cd = @s[type=minecraft:armor_stand] chr.ult.cd



scoreboard players operation @s[type=minecraft:armor_stand] Health = @p Health

scoreboard players operation @s[type=minecraft:armor_stand] duiCanceller = @p duiCanceller


execute if score @s duiCanceller matches 0 run execute if score @p duiMemory matches 1.. run scoreboard players operation @s[type=minecraft:armor_stand] duiMemory = @p duiMemory
execute if score @s duiCanceller matches 0 run execute if score @p duiMemory matches 0 run scoreboard players operation @p duiMemory = @s[type=minecraft:armor_stand] duiMemory
execute if score @s duiCanceller matches -1 run execute if score @p duiMemory matches 0 run scoreboard players operation @s[type=minecraft:armor_stand] duiMemory = @p duiMemory 


scoreboard players operation @s[type=minecraft:armor_stand] health = @p health
#execute if entity @p[scores={useCustomHead=9}] run scoreboard players operation @p chr.abi3.cd = @s chr.abi3.cd
#scoreboard players operation @s[type=minecraft:armor_stand] obj.clockID = @p obj.clockID

## ANIMATED MAX UPDATER SHARE
#execute if score @s impactCD.loadTrigger matches 0 run execute if score @s impactCooldown matches 0.. run scoreboard players operation @s animateMax = @s impactCooldown
#execute if score @s impactCD.loadTrigger matches 0 run execute if score @s impactCooldown matches 0.. run scoreboard players add @s animateMax 1
#execute if score @s impactCooldown matches -10000 run scoreboard players set @s impactCD.loadTrigger 0
#execute if score @s impactCooldown matches 1.. run scoreboard players set @s impactCD.loadTrigger 1
#scoreboard players operation @p impactCD.loadTrigger = @s[type=minecraft:armor_stand] impactCD.loadTrigger
#scoreboard players operation @p stunReverseTimer = @s[type=minecraft:armor_stand] stunReverseTimer
#scoreboard players operation @s[type=minecraft:armor_stand] stunMem = @p stunMem

