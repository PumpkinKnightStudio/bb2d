
# PASSIVE

scoreboard players set @s local.animatedTime 8388608
scoreboard players set @s chr.stunAnimTime 98
# RANDOM ANIMATION ID

#scoreboard players add @s[type=armor_stand] threeAnimRandom 1
#scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
execute if score @s actionID matches 10..11 run scoreboard players set @s motionStill 1
execute if score @s chr.cg.blockTimer matches 1..25 run scoreboard players set @s motionStill 1
execute unless score @s chr.cg.blockTimer matches 1..25 run scoreboard players set @s motionStill 0
scoreboard players add @s[type=armor_stand] chr.cg.droppingItem 1
scoreboard players set @s[type=armor_stand,scores={chr.cg.droppingItem=120..}] chr.cg.droppingItem 1
execute if score @s stunMem matches 1 run execute if score @s stunReverseTimer matches 0.. run execute if score @s stunReverseTimer < @s stunTimerCalLoad run scoreboard players add @s stunReverseTimer 1

execute as @s[team=left] at @s run execute if score @s chr.cg.droppingItem matches 119 run summon item ~ ~1 ~ {Tags:["droppedItem","left","powerupItem"],Item:{id:"minecraft:cooked_chicken",Count:1b,tag:{droppable:1,heal:5}}}
execute as @s[team=right] at @s run execute if score @s chr.cg.droppingItem matches 119 run summon item ~ ~1 ~ {Tags:["droppedItem","right","powerupItem"],Item:{id:"minecraft:cooked_chicken",Count:1b,tag:{droppable:1,heal:5}}}
execute if score @s chr.cg.droppingItem matches 119 run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 1

execute as @s run execute if score @s yLoc matches 1.. run effect give @s[type=player] minecraft:slow_falling 2 1 true
#effect give @s minecraft:levitation 1 129
#execute as @s run execute if score @s yLoc matches 1.. run execute if score @s sneakToggle matches 1.. run item replace entity @s[type=player] armor.chest with minecraft:elytra
#execute if score @s sneakToggle matches 0 run item replace entity @s[type=player] armor.chest with minecraft:air
#execute as @s run execute if score @s yLoc matches 1.. run execute if predicate core:empty_chestplate run item replace entity @s[type=player] armor.chest with minecraft:elytra
#execute as @s run execute if score @s yLoc matches ..0 run item replace entity @s[type=player] armor.chest with minecraft:air
execute as @s at @s run execute if block ~ ~-0.1 ~ minecraft:air run execute if score @s sneakToggle matches 1.. run effect give @s minecraft:levitation 1 249
execute as @s at @s run execute unless block ~ ~-0.05 ~ minecraft:air run effect clear @s minecraft:levitation
##################

## ITEM NOTIFIER
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800101}

execute if score @s actionID matches 0.. run execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800102}



#################


item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Cluck and Chuck (Chicken Slap)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.65s","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 5","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ● Damage Type: Physical","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":"Colonel Supersizzle delivers a hilarious yet "}','{"text":"effective slap with his wings, disorienting enemies "}','{"text":"and leaving them in a state of mild confusion. "}','{"text":"The sheer absurdity of being slapped by"}','{"text":"a chicken often catches foes off guard."}']},HideFlags:4,Unbreakable:1b,CustomModelData:370001,element:10,spell_id:1,droppable:-1,abilityTool:1} 1
item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Fowl Fling (Throwing Chicken)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.65s","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 2","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ● Damage Type: Range","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":"Colonel Supersizzle hurls a specially prepared"}','{"text":"chicken at an enemy. The impact may deal"}','{"text":"spectacle of an enemy being hit by a flying chicken."}','{"text":"Moreover, the shock stuns them momentarily,"}','{"text":"leaving them open to follow-up attacks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:370001,element:10,spell_id:2,droppable:-1,abilityTool:2} 1
execute unless score @s actionID matches 10..11 run item replace entity @s hotbar.6 with shield{display:{Name:'{"text":"Parry (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Colonel Supersizzle deftly uses his fur to parry"}','{"text":"incoming attacks. If timed correctly, he"}','{"text":"can deflect damage and leave his attacker "}','{"text":"momentarily stunned. "}']},HideFlags:4,Unbreakable:1b,droppable:-1,abilityTool:3} 1
execute if score @s actionID matches 10..11 run item replace entity @s hotbar.6 with barrier{display:{Name:'{"text":"Parry (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Colonel Supersizzle deftly uses his fur to parry"}','{"text":"incoming attacks. If timed correctly, he"}','{"text":"can deflect damage and leave his attacker "}','{"text":"momentarily stunned. "}']},HideFlags:4,Unbreakable:1b,droppable:-1,abilityTool:3} 1

##################
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result score @s threeAnimRandom run loot spawn 320 1 -246 loot core:three_anim
execute if score @s threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800103}
execute if score @s threeAnimRandom matches 2 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800104}
execute if score @s threeAnimRandom matches 3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800105}
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
#execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s animateSysTime 1
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s animate matches 1 run execute if score @s actionID matches 3 run function core:2dlogic/morph/cg_addon/attack_cooldown
execute if score @s animate matches 6 run execute if score @s actionID matches 3 run function core:2dlogic/morph/cg_addon/state_3

execute if score @s animate matches 1 run execute if score @s actionID matches 4 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800106}
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players add @s animateSysTime 1
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 4 run effect give @s slowness 1 8 true
execute if score @s[type=player] animate matches 8 run execute if score @s actionID matches 4 run function core:2dlogic/morph/cg_addon/state_4

execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 4.. run effect give @s slowness 1 8 true
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 4.. run effect give @s minecraft:jump_boost 1 128
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 4 run effect clear @s slowness
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 4 run effect clear @s minecraft:jump_boost
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800107}

execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 6.. run scoreboard players set @s animateSysTime 8388663
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 1..5 run scoreboard players remove @s animateSysTime 2
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 1.. run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 1.. run scoreboard players add @s chr.cg.blockTimer 1
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 0 run scoreboard players set @s chr.cg.blockTimer 0


## PARRY AND CANCEL ##################################
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800108}
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run scoreboard players add @s animateSysTime 1
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 5 run effect give @s slowness 1 2 true
execute if score @s animate matches 15 run execute if score @s actionID matches 10 run function core:2dlogic/morph/cg_addon/state_10a
execute if score @s animate matches 17 run execute if score @s actionID matches 10 run scoreboard players set @s actionID 0

execute if score @s impactCooldown matches 10.. run execute if score @s animate matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800109}
execute if score @s impactCooldown matches 10.. run execute if score @s animate matches 0 run scoreboard players set @s animate 1

execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players add @s animateSysTime 7
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players set @s impactCooldown 90
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s impactCooldown matches 1.. run execute if score @s actionID matches 11 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run function core:2dlogic/morph/cg_addon/state_11a
## ENDING ANIMATION ##

execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1

execute if score @s stunMem matches 0 run execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s armor.head with minecraft:potion{CustomModelData:800101}
execute unless score @s actionID matches -2 run execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0
execute if score @s stunMem matches 0 run scoreboard players set @s stunTimerCalLoad -1
execute if score @s stunReverseTimer = @s stunTimerCal run scoreboard players set @s stunReverseTimer -1
execute if score @s stunReverseTimer matches -1 run execute if score @s actionID matches -2 run function core:2dlogic/morph/extra/cg_stun_end
execute if score @s stunReverseTimer matches -1 run execute if score @s actionID matches -2 run scoreboard players set @s stunTimerCalLoad 0
execute if score @s stunReverseTimer matches -1 run execute if score @s actionID matches -2 run scoreboard players set @s stunReverseTimer 0
execute if score @s stunReverseTimer matches 0 run execute if score @s actionID matches -2 run scoreboard players set @s actionID 0
execute if score @s stunReverseTimer matches 1.. run scoreboard players set @s actionID -2



## CG EXTRA SKIP
execute if score @s animate matches 1.. run execute if score @s actionID matches 3 run execute if score @s animate matches 11.. run scoreboard players set @s animate 0

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
