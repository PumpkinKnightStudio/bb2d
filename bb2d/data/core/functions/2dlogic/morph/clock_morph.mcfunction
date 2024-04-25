# PASSIVE
#scoreboard players remove @s[scores={hana.active.nature=1..}] hana.active.nature 1
#scoreboard players set @s reduceDMG 20

# RANDOM ANIMATION ID

#scoreboard players add @s[type=armor_stand] threeAnimRandom 1
#scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
scoreboard players remove @s[scores={chr.abi4.cd=1..}] chr.abi4.cd 1
scoreboard players remove @s[scores={chr.abi3.cd=1..}] chr.abi3.cd 1
scoreboard players remove @s[scores={clockMaker.timer.tp=1..}] clockMaker.timer.tp 1
#scoreboard players operation @s obj.clockID = @s playerID

#execute if score @s holdingActionID matches 4 run execute if score @s chr.abi3.cd matches 399.. run title @s actionbar {"text":"Grandfather clock already been placed"}

execute if score @s clockMaker.timer.tp matches 1 run function core:2dlogic/morph/clock_addon/state_6a
execute if score @s clockMaker.timer.tp matches 3.. run scoreboard players set @s chr.abi4.cd 200

execute if score @s clockMaker.timer.tp matches ..-1 run scoreboard players operation @s chr.abi4.cd = @s clockMaker.timer.tp
execute if score @s clockMaker.timer.tp matches ..-1 run scoreboard players operation @s chr.abi4.cd *= .neg clock.default.deduct
execute if score @s clockMaker.timer.tp matches ..-1 run scoreboard players set @s clockMaker.timer.tp 2
#scoreboard players remove @s[scores={hana.ne.cd=1..}] hana.ne.cd 1



#################

## ITEM NOTIFIER


#################

execute if score @s[type=armor_stand,tag=model] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800201}

execute if score @s[type=armor_stand,tag=model] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800202}


##################


item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Time Swipe","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.65s","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 5","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ● Damage Type: Physical","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":"Colonel Supersizzle delivers a hilarious yet "}','{"text":"effective slap with his wings, disorienting enemies "}','{"text":"and leaving them in a state of mild confusion. "}','{"text":"The sheer absurdity of being slapped by"}','{"text":"a chicken often catches foes off guard."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:1,droppable:-1,abilityTool:1} 

execute unless score @s chr.abi3.cd matches 1.. run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Grand Clockfather","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker summons a towering"}','{"text":"grandfather clock onto the battlefield. "}','{"text":"This clock radiates a powerful temporal field,"}','{"text":"granting allies within its radius enhanced "}','{"text":"movement speed and reduced cooldowns."}','{"text":"To destroy the clock, enemies must focus their"}','{"text":"attacks on it. The Grand Clockfather has"}','{"text":"500 HP and a field radius of 20 blocks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:4,droppable:-1,abilityTool:4} 1
execute if score @s chr.abi3.cd matches 1.. run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Grand Clockfather","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker summons a towering"}','{"text":"grandfather clock onto the battlefield. "}','{"text":"This clock radiates a powerful temporal field,"}','{"text":"granting allies within its radius enhanced "}','{"text":"movement speed and reduced cooldowns."}','{"text":"To destroy the clock, enemies must focus their"}','{"text":"attacks on it. The Grand Clockfather has"}','{"text":"500 HP and a field radius of 20 blocks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:4,droppable:-1,abilityTool:4} 1

execute unless score @s chr.abi4.cd matches 1.. run item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Temporal Remnant","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker places a remnant in time at"}','{"text":"his current location, marking a "}','{"text":"moment in the temporal flow. After a short"}','{"text":"moment, he will teleport back to the remnant\'s"}','{"text":"location, allowing for strategic repositioning"}','{"text":"and escape maneuvers."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:3,droppable:-1,abilityTool:3} 1
execute if score @s chr.abi4.cd matches 1.. run item replace entity @s hotbar.6 with barrier{display:{Name:'{"text":"Temporal Remnant","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker places a remnant in time at"}','{"text":"his current location, marking a "}','{"text":"moment in the temporal flow. After a short"}','{"text":"moment, he will teleport back to the remnant\'s"}','{"text":"location, allowing for strategic repositioning"}','{"text":"and escape maneuvers."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:3,droppable:-1,abilityTool:3} 1
execute if score @s clockMaker.timer.tp matches 1.. run item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Temporal Remnant","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker places a remnant in time at"}','{"text":"his current location, marking a "}','{"text":"moment in the temporal flow. After a short"}','{"text":"moment, he will teleport back to the remnant\'s"}','{"text":"location, allowing for strategic repositioning"}','{"text":"and escape maneuvers."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:8,droppable:-1,abilityTool:3} 1

execute unless score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Temporal Stasis (Ultimate)","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Radius: 12","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Cooldown: 60 secs","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"The Clock Maker harnesses the full extent"}','{"text":"of his temporal mastery, "}','{"text":"unleashing a wave of temporal energy that"}','{"text":"freezes time within a designated area."}','{"text":"Enemies caught within the stasis field are"}','{"text":"temporarily immobilized, rendering them helpless"}','{"text":"targets for a brief duration."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:5,droppable:-1,abilityTool:5} 1
execute if score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with barrier{display:{Name:'{"text":"Temporal Stasis (Ultimate)","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Radius: 12","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Cooldown: 60 secs","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"The Clock Maker harnesses the full extent"}','{"text":"of his temporal mastery, "}','{"text":"unleashing a wave of temporal energy that"}','{"text":"freezes time within a designated area."}','{"text":"Enemies caught within the stasis field are"}','{"text":"temporarily immobilized, rendering them helpless"}','{"text":"targets for a brief duration."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:5,droppable:-1,abilityTool:5} 1


item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result score @s threeAnimRandom run loot spawn 320 1 -246 loot core:three_anim
execute unless score @s threeAnimRandom = @p threeAnimRandom run scoreboard players operation @s threeAnimRandom = @p threeAnimRandom
execute if score @s threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800203}
execute if score @s threeAnimRandom matches 2 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800204}
execute if score @s threeAnimRandom matches 3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800205}
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s[tag=model] animateSysTime 2
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s animate matches 1 run execute if score @s actionID matches 3 run function core:2dlogic/morph/hana_morph/attack_cooldown
execute if score @s animate matches 6 run execute if score @s actionID matches 3 run function core:2dlogic/morph/clock_addon/state_3

execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800207}
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players add @s[tag=model] animateSysTime 2
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 10 run execute if score @s actionID matches 5 run function core:2dlogic/morph/clock_addon/state_7
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 5 run effect give @s slowness 1 3 true
execute if score @s animate matches 11 run execute if score @s actionID matches 5 run execute as @s[type=player] run tag @s remove clock.grand.link

execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800207}
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players add @s[tag=model] animateSysTime 2
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 11 run execute if score @s actionID matches 4 run function core:2dlogic/morph/clock_addon/state_6
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 4 run effect give @s slowness 1 3 true
execute if score @s animate matches 11 run execute if score @s actionID matches 4 run scoreboard players set @s chr.abi4.cd 300



execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 7 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800209}
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players add @s[tag=model] animateSysTime 6
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 89 run execute if score @s actionID matches 7 run scoreboard players set @s chr.ult.cd 600
execute if score @s animate matches 90 run execute if score @s actionID matches 7 run function core:2dlogic/morph/clock_addon/state_8


## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s[type=armor_stand,tag=model] armor.head with minecraft:potion{CustomModelData:800201}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0
execute if score @s animate matches 0 run execute if score @s actionID matches 3.. run scoreboard players set @s actionID 0

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12


execute if score @s animate matches 1.. run execute if score @s actionID matches 3 run execute if score @s animate matches 9.. run scoreboard players set @s animate 0

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
