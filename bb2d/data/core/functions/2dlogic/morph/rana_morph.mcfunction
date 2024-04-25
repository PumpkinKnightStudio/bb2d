# PASSIVE
#scoreboard players remove @s[scores={hana.active.nature=1..}] hana.active.nature 1
#scoreboard players set @s reduceDMG 20

# RANDOM ANIMATION ID

#scoreboard players add @s[type=armor_stand] threeAnimRandom 1
#scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
scoreboard players remove @s[scores={chr.abi4.cd=1..}] chr.abi4.cd 1
scoreboard players remove @s[scores={chr.abi3.cd=1..}] chr.abi3.cd 1
#scoreboard players remove @s[scores={clockMaker.timer.tp=1..}] clockMaker.timer.tp 1
#scoreboard players operation @s obj.clockID = @s playerID
execute unless score @s shieldOn matches 1.. run execute unless score @s animate matches 1.. run execute if score @s sneakToggle matches 1 run execute unless score @s rana.jumpScore matches 24.. run scoreboard players add @s rana.jumpScore 1
execute if score @s rana.jumpScore matches 1.. run execute if score @s sneakToggle matches 0 run function core:2dlogic/morph/rana_addon/ability1
execute if score @s rana.landToggle matches 1.. run execute unless block ~ ~-0.1 ~ minecraft:air run scoreboard players remove @s[scores={rana.landToggle=1..}] rana.landToggle 1

#execute if score @s holdingActionID matches 4 run execute if score @s chr.abi3.cd matches 399.. run title @s actionbar {"text":"Grandfather clock already been placed"}

#execute if score @s clockMaker.timer.tp matches 1 run function core:2dlogic/morph/clock_addon/state_6a

#scoreboard players remove @s[scores={hana.ne.cd=1..}] hana.ne.cd 1



#################

## ITEM NOTIFIER


#################

execute if score @s[type=armor_stand,tag=model] animate matches 0 run execute unless score @s rana.landToggle matches 1..2 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800301}

execute if score @s[type=armor_stand,tag=model] animate matches 0 run execute unless score @s rana.landToggle matches 1..2 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800302}

execute unless score @s animate matches 1.. run execute if score @s[type=armor_stand,tag=model] rana.landToggle matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800304}

##################


execute unless score @s chr.abi3.cd matches 1.. run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Tongue Lash","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker summons a towering"}','{"text":"grandfather clock onto the battlefield. "}','{"text":"This clock radiates a powerful temporal field,"}','{"text":"granting allies within its radius enhanced "}','{"text":"movement speed and reduced cooldowns."}','{"text":"To destroy the clock, enemies must focus their"}','{"text":"attacks on it. The Grand Clockfather has"}','{"text":"500 HP and a field radius of 20 blocks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:12,spell_id:3,droppable:-1,abilityTool:4} 1
execute if score @s chr.abi3.cd matches 1.. run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Tongue Lash","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker summons a towering"}','{"text":"grandfather clock onto the battlefield. "}','{"text":"This clock radiates a powerful temporal field,"}','{"text":"granting allies within its radius enhanced "}','{"text":"movement speed and reduced cooldowns."}','{"text":"To destroy the clock, enemies must focus their"}','{"text":"attacks on it. The Grand Clockfather has"}','{"text":"500 HP and a field radius of 20 blocks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:12,spell_id:3,droppable:-1,abilityTool:4} 1

execute unless score @s animate matches 1.. run execute unless score @s actionID matches 4 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Toxic Spit","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker summons a towering"}','{"text":"grandfather clock onto the battlefield. "}','{"text":"This clock radiates a powerful temporal field,"}','{"text":"granting allies within its radius enhanced "}','{"text":"movement speed and reduced cooldowns."}','{"text":"To destroy the clock, enemies must focus their"}','{"text":"attacks on it. The Grand Clockfather has"}','{"text":"500 HP and a field radius of 20 blocks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:12,spell_id:1,droppable:-1,abilityTool:1} 1
execute if score @s animate matches 1.. run execute if score @s actionID matches 4 run item replace entity @s hotbar.4 with barrier{display:{Name:'{"text":"Toxic Spit","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker summons a towering"}','{"text":"grandfather clock onto the battlefield. "}','{"text":"This clock radiates a powerful temporal field,"}','{"text":"granting allies within its radius enhanced "}','{"text":"movement speed and reduced cooldowns."}','{"text":"To destroy the clock, enemies must focus their"}','{"text":"attacks on it. The Grand Clockfather has"}','{"text":"500 HP and a field radius of 20 blocks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:12,spell_id:1,droppable:-1,abilityTool:1} 1

execute unless score @s animate matches 1.. run execute unless score @s actionID matches 6 run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Leap Strike","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker summons a towering"}','{"text":"grandfather clock onto the battlefield. "}','{"text":"This clock radiates a powerful temporal field,"}','{"text":"granting allies within its radius enhanced "}','{"text":"movement speed and reduced cooldowns."}','{"text":"To destroy the clock, enemies must focus their"}','{"text":"attacks on it. The Grand Clockfather has"}','{"text":"500 HP and a field radius of 20 blocks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:12,spell_id:2,droppable:-1,abilityTool:2} 1
execute if score @s animate matches 1.. run execute if score @s actionID matches 6 run item replace entity @s hotbar.5 with barrier{display:{Name:'{"text":"Leap Strike","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Clock Maker summons a towering"}','{"text":"grandfather clock onto the battlefield. "}','{"text":"This clock radiates a powerful temporal field,"}','{"text":"granting allies within its radius enhanced "}','{"text":"movement speed and reduced cooldowns."}','{"text":"To destroy the clock, enemies must focus their"}','{"text":"attacks on it. The Grand Clockfather has"}','{"text":"500 HP and a field radius of 20 blocks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:12,spell_id:2,droppable:-1,abilityTool:2} 1

execute unless score @s actionID matches 10..11 run item replace entity @s hotbar.6 with shield{display:{Name:'{"text":"Block (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,droppable:-1,abilityTool:3} 1
item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

# SNEAK ANIMATION

execute if score @s rana.jumpScore matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800303}
execute if score @s rana.jumpScore matches 6.. run scoreboard players set @s animateSysTime 8388640
execute if score @s rana.jumpScore matches 1..3 run scoreboard players operation @s animateSysTime -= @s rana.jumpScore
execute if score @s rana.jumpScore matches 1.. run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime

execute if score @s animate matches 1 run execute if score @s actionID matches 4 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800306}
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players add @s animateSysTime 1
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 4 run effect give @s slowness 1 1 true
execute if score @s[type=player] animate matches 4 run execute if score @s actionID matches 4 run function core:2dlogic/morph/rana_addon/state_4

execute if score @s animate matches 1 run execute if score @s actionID matches 5 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800305}
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players add @s animateSysTime 8
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 5 run effect give @s slowness 1 5 true
execute if score @s animate matches 30 run execute if score @s actionID matches 5 run function core:2dlogic/morph/rana_addon/state_5

execute if score @s animate matches 1 run execute if score @s actionID matches 6 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800307}
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players add @s animateSysTime 8
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 6 run effect give @s slowness 1 5 true
execute if score @s animate matches 28 run execute if score @s actionID matches 6 run function core:2dlogic/morph/rana_addon/state_6

## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s[type=armor_stand,tag=model] armor.head with minecraft:potion{CustomModelData:800301}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0
execute if score @s animate matches 0 run execute if score @s actionID matches 3.. run scoreboard players set @s actionID 0


execute if score @s shieldOn matches 2.. run effect give @s slowness 1 8 true
execute if score @s shieldOn matches 2.. run effect give @s minecraft:jump_boost 1 128
execute if score @s shieldOn matches 1 run effect clear @s slowness
execute if score @s shieldOn matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800308}

execute if score @s shieldOn matches 6.. run scoreboard players set @s animateSysTime 8388640
execute if score @s shieldOn matches 6.. run scoreboard players remove @s animateSysTime 19
execute if score @s shieldOn matches 1..5 run scoreboard players operation @s animateSysTime -= @s shieldOn
execute if score @s shieldOn matches 1.. run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime

execute if score @s shieldOn matches 6.. run scoreboard players set @s reduceDMG 200


## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12


execute if score @s animate matches 1.. run execute if score @s actionID matches 3 run execute if score @s animate matches 9.. run scoreboard players set @s animate 0

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
