# PASSIVE
#scoreboard players remove @s[scores={hana.active.nature=1..}] hana.active.nature 1
#scoreboard players set @s reduceDMG 20

# RANDOM ANIMATION ID
scoreboard players remove @s[scores={chr.abi4.cd=1..}] chr.abi4.cd 1
scoreboard players remove @s[scores={chr.abi3.cd=1..}] chr.abi3.cd 1
scoreboard players remove @s[scores={chr.abi5.cd=1..}] chr.abi5.cd 1
#scoreboard players add @s[type=armor_stand] threeAnimRandom 1
#scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
scoreboard players remove @s[scores={devast.explosion.timer=1..}] devast.explosion.timer 1



#################

## ITEM NOTIFIER


#################

execute if score @s[type=armor_stand,tag=model] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800501}

execute if score @s[type=armor_stand,tag=model] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800502}


##################


item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Axe Swing","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator swings his long-handled"}','{"text":"axe with precision, dealing moderate"}','{"text":"dealing moderate damage to a single target."}','{"text":"This attack is quick and can be used"}','{"text":"repeatedly to unleash a flurry of strikes."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:1,droppable:-1,abilityTool:1} 1

execute unless score @s chr.abi3.cd matches 1.. run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Axe Spin","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator whirls his axe in a wide arc"}','{"text":"striking all nearby enemies with a devastating"}','{"text":"spinning attack. This ability deals moderate damage"}','{"text":"to all foes within range and can be especially"}','{"text":"effective against groups of enemies or clustered opponents."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:2,droppable:-1,abilityTool:2} 1
execute if score @s chr.abi3.cd matches 1.. run item replace entity @s hotbar.5 with barrier{display:{Name:'{"text":"Axe Spin","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator whirls his axe in a wide arc"}','{"text":"striking all nearby enemies with a devastating"}','{"text":"spinning attack. This ability deals moderate damage"}','{"text":"to all foes within range and can be especially"}','{"text":"effective against groups of enemies or clustered opponents."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:2,droppable:-1,abilityTool:2} 1

execute unless score @s chr.abi4.cd matches 1.. run item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Shard Shockwave","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator smashes his axe into the ground,"}','{"text":"sending shockwaves of energy rippling outward."}','{"text":"This creates a wave of sharp crystalline shards that pierce"}','{"text":"through enemies in its path, causing damage and knocking"}','{"text":"them back. This ability is excellent for crowd control"}','{"text":"and disrupting enemy formations."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:3,droppable:-1,abilityTool:3} 1
execute if score @s chr.abi4.cd matches 1.. run item replace entity @s hotbar.6 with barrier{display:{Name:'{"text":"Shard Shockwave","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator smashes his axe into the ground,"}','{"text":"sending shockwaves of energy rippling outward."}','{"text":"This creates a wave of sharp crystalline shards that pierce"}','{"text":"through enemies in its path, causing damage and knocking"}','{"text":"them back. This ability is excellent for crowd control"}','{"text":"and disrupting enemy formations."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:3,droppable:-1,abilityTool:3} 1

execute unless score @s chr.abi5.cd matches 1.. run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Crimson Reckoning","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator slams his axe into the ground, "}','{"text":"channeling dark energy through its blade."}','{"text":"A crimson sword erupts from the ground beneath the"}','{"text":"targeted enemy. If the enemy fails to dodge the attack,"}','{"text":"they become paralyzed momentarily. After a brief"}','{"text":"delay, the sword explodes, dealing massive damage to the"}','{"text":"paralyzed foe and any nearby enemies caught in the blast radius"}','{"text":"This ability can turn the tide of battle by incapacitating"}','{"text":"key targets and causing chaos among enemy ranks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:4,droppable:-1,abilityTool:4} 1
execute if score @s chr.abi5.cd matches 1.. run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Crimson Reckoning","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator slams his axe into the ground, "}','{"text":"channeling dark energy through its blade."}','{"text":"A crimson sword erupts from the ground beneath the"}','{"text":"targeted enemy. If the enemy fails to dodge the attack,"}','{"text":"they become paralyzed momentarily. After a brief"}','{"text":"delay, the sword explodes, dealing massive damage to the"}','{"text":"paralyzed foe and any nearby enemies caught in the blast radius"}','{"text":"This ability can turn the tide of battle by incapacitating"}','{"text":"key targets and causing chaos among enemy ranks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:4,droppable:-1,abilityTool:4} 1


#execute unless score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Temporal Stasis (Ultimate)","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Radius: 12","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Cooldown: 60 secs","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"The Clock Maker harnesses the full extent"}','{"text":"of his temporal mastery, "}','{"text":"unleashing a wave of temporal energy that"}','{"text":"freezes time within a designated area."}','{"text":"Enemies caught within the stasis field are"}','{"text":"temporarily immobilized, rendering them helpless"}','{"text":"targets for a brief duration."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:5,droppable:-1,abilityTool:5} 1
#execute if score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with barrier{display:{Name:'{"text":"Temporal Stasis (Ultimate)","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Radius: 12","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Cooldown: 60 secs","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"The Clock Maker harnesses the full extent"}','{"text":"of his temporal mastery, "}','{"text":"unleashing a wave of temporal energy that"}','{"text":"freezes time within a designated area."}','{"text":"Enemies caught within the stasis field are"}','{"text":"temporarily immobilized, rendering them helpless"}','{"text":"targets for a brief duration."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:11,spell_id:5,droppable:-1,abilityTool:5} 1


item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result score @s threeAnimRandom run loot spawn 320 1 -246 loot core:three_anim
execute unless score @s threeAnimRandom = @p threeAnimRandom run scoreboard players operation @s threeAnimRandom = @p threeAnimRandom
execute if score @s threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800503}
execute if score @s threeAnimRandom matches 2 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800504}
execute if score @s threeAnimRandom matches 3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800503}
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s[tag=model] animateSysTime 37
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s animate matches 1 run execute if score @s actionID matches 3 run function core:2dlogic/morph/hana_morph/attack_cooldown
execute if score @s[type=player] animate matches 15 run execute if score @s actionID matches 3 run function core:2dlogic/morph/devast_addon/state_3


execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800506}
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players add @s[tag=model] animateSysTime 2
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 14..42 run execute if score @s actionID matches 4 run function core:2dlogic/morph/devast_addon/state_4

execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800507}
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players add @s[tag=model] animateSysTime 2
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 34 run execute if score @s actionID matches 5 run effect give @s slowness 3 10 true
execute if score @s animate matches 34 run execute if score @s actionID matches 5 run function core:2dlogic/morph/devast_addon/state_5

execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800507}
execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players add @s[tag=model] animateSysTime 2
execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s animate matches 34 run execute if score @s actionID matches 5 run effect give @s slowness 3 10 true
execute if score @s animate matches 34 run execute if score @s actionID matches 6 run execute as @s[type=armor_stand] run function core:2dlogic/morph/devast_addon/state_6
execute if score @s animate matches 34 run execute if score @s actionID matches 6 run execute as @s[type=player] run scoreboard players set @s chr.abi5.cd 200

## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s[type=armor_stand,tag=model] armor.head with minecraft:potion{CustomModelData:800501}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0
execute if score @s animate matches 0 run execute if score @s actionID matches 3.. run scoreboard players set @s actionID 0

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12


execute if score @s animate matches 1.. run execute if score @s actionID matches 3 run execute if score @s animate matches 37.. run scoreboard players set @s animate 0

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
