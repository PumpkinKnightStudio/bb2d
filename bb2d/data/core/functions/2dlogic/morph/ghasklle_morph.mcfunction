# PASSIVE
#scoreboard players remove @s[scores={hana.active.nature=1..}] hana.active.nature 1
#scoreboard players set @s reduceDMG 20

# RANDOM ANIMATION ID

#scoreboard players add @s[type=armor_stand] threeAnimRandom 1
#scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
#execute if score @s holdingActionID matches 4 run execute if score @s chr.abi3.cd matches 399.. run title @s actionbar {"text":"Grandfather clock already been placed"}

#execute if score @s clockMaker.timer.tp matches 1 run function core:2dlogic/morph/clock_addon/state_6a

#scoreboard players remove @s[scores={hana.ne.cd=1..}] hana.ne.cd 1



#################

## ITEM NOTIFIER


#################


execute unless score @s animate matches 1.. run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800401}
execute unless score @s animate matches 1.. run execute if score @s walking matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800403}

##################


execute unless score @s animate matches 1.. run execute unless score @s actionID matches 4 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Attack","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:13,spell_id:1,droppable:-1,abilityTool:1} 1
execute if score @s animate matches 1.. run execute if score @s actionID matches 4 run item replace entity @s hotbar.4 with barrier{display:{Name:'{"text":"Attack","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:13,spell_id:1,droppable:-1,abilityTool:1} 1


item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800405}
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s animateSysTime 1
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=player] animate matches 20 run execute if score @s actionID matches 3 run effect give @s slowness 1 5 true
execute if score @s[type=player] animate matches 20 run execute if score @s actionID matches 3 run function core:2dlogic/morph/ghasklle_addon/state_3

## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s[type=armor_stand,tag=model] armor.head with minecraft:potion{CustomModelData:800401}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0
execute if score @s animate matches 0 run execute if score @s actionID matches 3.. run scoreboard players set @s actionID 0




## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12


execute if score @s animate matches 1.. run execute if score @s actionID matches 3 run execute if score @s animate matches 48.. run scoreboard players set @s animate 0

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
