

## skill reset for area effect where addition is always 1 (BEFORE)
scoreboard players set @s[type=player] skillCDRedux 0

## skill reset for area effect where addition is always 1 (BEFORE)
scoreboard players set @s[type=player] healTrigger 0

## skill reset for effect addition is always 1 (CHANGE TO PORT AT DAMAGE CAL)
#scoreboard players set @s[type=player] strengthEF 0

## RESET skill CD REDUX When Effect Timer Ran Out (Stackable)
scoreboard players set @s[type=player,scores={skillCDTimerA=0}] skillCDReduxA 0

## RESET healA When Effect Timer Ran Out (Stackable)
scoreboard players set @s[type=player,scores={healTimerA=0}] healTriggerA 0

## RESET strengthEFA When Effect Timer Ran Out (Stackable)
scoreboard players set @s[type=player,scores={strengthEFTA=0}] strengthEFA 0

## RESET speedEFA When Effect Timer Ran Out (Stackable)
scoreboard players set @s[type=player,scores={speedEFTA=0}] speedEFA 0



## Skill TIMER COUNTDOWN
scoreboard players remove @s[type=player,scores={skillCDTimer=1..}] skillCDTimer 1
scoreboard players remove @s[type=player,scores={skillCDTimerA=1..}] skillCDTimerA 1

## HEAL TIMER COUNTDOWN
scoreboard players remove @s[type=player,scores={healTimer=1..}] healTimer 1
scoreboard players remove @s[type=player,scores={healTimerA=1..}] healTimerA 1

## STRENGTH TIMER COUNTDOWN
scoreboard players remove @s[type=player,scores={strengthEFT=1..}] strengthEFT 1
scoreboard players remove @s[type=player,scores={strengthEFTA=1..}] strengthEFTA 1

## SPEED TIMER COUNTDOWN
scoreboard players remove @s[type=player,scores={speedEFT=1..}] speedEFT 1
scoreboard players remove @s[type=player,scores={speedEFTA=1..}] speedEFTA 1

scoreboard players add @s[type=player,scores={speedEFT=..-1}] speedEFT 1
scoreboard players add @s[type=player,scores={speedEFTA=..-1}] speedEFTA 1

scoreboard players remove @s[type=player,scores={speedEFTA=1..}] speedEFTA 1

## SKILL IMPORT ################################### EDITABLE ###
scoreboard players operation @s[type=player] skillCDRedux += @s guru.skillCDRedux
scoreboard players operation @s[type=player] skillCDRedux += @s clock.skillCDRedux
execute if score @s effect.warcry matches 1.. run scoreboard players add @s skillCDRedux 1
##################################################################

## addition from stackable version
scoreboard players operation @s[type=player] skillCDRedux += @s skillCDReduxA
scoreboard players operation @s[type=player] healTrigger += @s healTriggerA
scoreboard players operation @s[type=player] strengthEF += @s strengthEFA
scoreboard players operation @s[type=player] speedEF += @s speedEFA

## HEAL ADDITION FORM OTHER SKILL ###### EDITABLE ##################
scoreboard players operation @s[type=player] healTrigger += @s hana.natureHeal
####################################################################

## TIMER IMPORT from other skill ###### EDITABLE ###################
scoreboard players operation @s[type=player] skillCDTimer += @s guru.skillCDTimer
scoreboard players operation @s[type=player] healTimer += @s hana.natureECD


## ULTIMATE BUFF DB ##

scoreboard players add @s[scores={ww.ult.active =1..}] speedEF 3
scoreboard players add @s[scores={ww.ult.active =1..}] speedEFT 1

scoreboard players add @s[scores={clock.skillCDRedux =1..}] speedEF 4
scoreboard players add @s[scores={effect.warcry =1..}] speedEF 6
scoreboard players add @s[scores={clock.skillCDRedux =1..}] speedEFT 1

scoreboard players add @s[scores={useCustomHead=10}] speedEF 2
scoreboard players add @s[scores={useCustomHead=10}] speedEFT 1

scoreboard players remove @s[scores={useCustomHead=12}] speedEF 2
scoreboard players add @s[scores={useCustomHead=12}] speedEFT 1

scoreboard players add @s[scores={useCustomHead=14}] speedEF 1
scoreboard players add @s[scores={useCustomHead=14,leo.walkTime=20..}] speedEF 3
scoreboard players add @s[scores={useCustomHead=14}] speedEFT 1

scoreboard players add @s[scores={useCustomHead=15}] speedEF 4
scoreboard players add @s[scores={useCustomHead=15}] speedEFT 1


## ACTIVATOR
execute if score @s useCustomHead matches 14 run execute if score @s[type=player] animate matches 1..18 run execute if score @s actionID matches 4 run scoreboard players set @s speedEF -100
execute if score @s useCustomHead matches 15 run execute if score @s[type=player] animate matches 2..10 run execute if score @s actionID matches 3 run scoreboard players set @s speedEF -8
#execute if score @s useCustomHead matches 14 run execute if score @s[type=player] animate matches 54 run execute if score @s actionID matches 4 run scoreboard players set @s speedEF 0
execute if score @s useCustomHead matches 14 run execute if score @s[type=player] animate matches 1..18 run execute if score @s actionID matches 4 run scoreboard players set @s speedEFT 1
execute if score @s useCustomHead matches 15 run execute if score @s[type=player] animate matches 2..10 run execute if score @s actionID matches 3 run scoreboard players add @s speedEFT 1


# STRENGTH SKILL
execute if score @s strengthEFTA matches 0 run scoreboard players set @s[type=player] strenghEFA 0

# SPEED SKILL

execute if score @s speedEFTA matches 0 run scoreboard players set @s[type=player] speedEFA 0

# NOTE: strengthEFA is an additional over time - reset to 0 when timer (EFTA) is 0
# Note: strengthEF is reset every tick - reset itself
####################################################################


## ACTIVATOR ###############
execute if score @s skillCDRedux matches 1.. run function core:2dlogic/skill_control/skill_cd
execute if score @s healTrigger matches 1.. run function core:2dlogic/skill_control/heal
############################

## EXTRA EFFECT STATUS #######
execute if score @s strengthEF matches 1.. run effect give @s strength 2 1 true
execute if score @s strengthEF matches 0 run scoreboard players set @s dmgAddition 0
execute if score @s strengthEF matches 1 run scoreboard players set @s dmgAddition 3
execute if score @s strengthEF matches 2 run scoreboard players set @s dmgAddition 6
execute if score @s strengthEF matches 3 run scoreboard players set @s dmgAddition 9
execute if score @s strengthEF matches 4 run scoreboard players set @s dmgAddition 12
execute if score @s strengthEF matches 5 run scoreboard players set @s dmgAddition 15

#execute if score @s speedEF matches 1.. run effect give @s speed 1 0 false
execute if score @s speedEF matches -100..-86 run attribute @s minecraft:generic.movement_speed base set 0.00
execute if score @s speedEF matches -85 run scoreboard players set @s speedEF -10
execute if score @s speedEF matches -9 run attribute @s minecraft:generic.movement_speed base set 0.01
execute if score @s speedEF matches -8 run attribute @s minecraft:generic.movement_speed base set 0.02
execute if score @s speedEF matches -7 run attribute @s minecraft:generic.movement_speed base set 0.03
execute if score @s speedEF matches -6 run attribute @s minecraft:generic.movement_speed base set 0.04
execute if score @s speedEF matches -5 run attribute @s minecraft:generic.movement_speed base set 0.05
execute if score @s speedEF matches -4 run attribute @s minecraft:generic.movement_speed base set 0.06
execute if score @s speedEF matches -3 run attribute @s minecraft:generic.movement_speed base set 0.07
execute if score @s speedEF matches -2 run attribute @s minecraft:generic.movement_speed base set 0.08
execute if score @s speedEF matches -1 run attribute @s minecraft:generic.movement_speed base set 0.09
execute if score @s speedEF matches 0 run attribute @s minecraft:generic.movement_speed base set 0.10
execute if score @s speedEF matches 1 run attribute @s minecraft:generic.movement_speed base set 0.11
execute if score @s speedEF matches 2 run attribute @s minecraft:generic.movement_speed base set 0.12
execute if score @s speedEF matches 3 run attribute @s minecraft:generic.movement_speed base set 0.13
execute if score @s speedEF matches 4 run attribute @s minecraft:generic.movement_speed base set 0.14
execute if score @s speedEF matches 5 run attribute @s minecraft:generic.movement_speed base set 0.15
execute if score @s speedEF matches 6 run attribute @s minecraft:generic.movement_speed base set 0.16
execute if score @s speedEF matches 7 run attribute @s minecraft:generic.movement_speed base set 0.17
execute if score @s speedEF matches 8 run attribute @s minecraft:generic.movement_speed base set 0.18
execute if score @s speedEF matches 9 run attribute @s minecraft:generic.movement_speed base set 0.19
execute if score @s speedEF matches 10.. run attribute @s minecraft:generic.movement_speed base set 0.20
##############################



## TIMER REMOVER
execute if score @s[type=player] skillCDTimer matches 1.. run scoreboard players remove @s[scores={guru.skillCDTimer=1..}] guru.skillCDTimer 1
#scoreboard players remove @s[scores={clock.skillCDTimer=1..}] clock.skillCDTimer 1
execute if score @s[type=player] healTimer matches 1.. run scoreboard players remove @s[scores={hana.natureECD=1..}] hana.natureECD 1


## PARTICLE
#execute if score @s[type=player] clock.skillCDRedux matches 1.. run particle item clock ~-9 ~0.5 ~ 0.01 0.01 0.01 0.15 1 normal @s


## RESET EVERY TIME ##
scoreboard players set @s[scores={clock.skillCDRedux=1..}] clock.skillCDRedux 0
scoreboard players set @s[scores={guru.skillCDRedux=1..}] guru.skillCDRedux 0
## DECREASE EVERY TICK




## RESET TIMER TO 0 if NO SKILL ACTIVE
scoreboard players set @s[type=player,scores={skillCDRedux=0}] skillCDTimer 0 
scoreboard players set @s[type=player,scores={healTrigger=0}] healTimer 0 
scoreboard players set @s[type=player,scores={strengthEF=0}] strengthEFT 0 

## MANUAL PER TIMER




## AUTO RESET EVERY TICK
scoreboard players set @s[type=player] hana.natureHeal 0

## GLOBAL RESET EFFECT AFTER CAL

scoreboard players set @s[type=player] strengthEF 0
scoreboard players set @s[type=player] strengthEFA 0

execute if score .usePlayerLimiter SystemSetting matches 1 run execute if score .oneCounter arenaTime matches 2.. run function core:2dlogic/arena/effect_template


scoreboard players set @s[type=player,scores={speedEF=1..}] speedEF 0
## DEACTIVATOR #############
execute if score @s[type=player] skillCDTimer matches 0 run scoreboard players set @s skillCDRedux 0
############################