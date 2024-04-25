# RANDOM ANIMATION ID

#scoreboard players add @s[type=armor_stand] threeAnimRandom 1
#scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
execute if score @s chr.abi4.cd matches 1.. run scoreboard players remove @s chr.abi4.cd 1
execute if score @s actionID matches 10..11 run scoreboard players set @s motionStill 1
execute if score @s chr.cg.blockTimer matches 1..25 run scoreboard players set @s motionStill 1
execute unless score @s chr.cg.blockTimer matches 1..25 run scoreboard players set @s motionStill 0
#################

execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200001}

execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200002}


##################

item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Attack","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.9s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 3","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ● Damage Type: Physical","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},Unbreakable:1b,element:4,spell_id:1,droppable:0,abilityTool:1} 1
item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Throw a catching net","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Preparation Time:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 3.9s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":true,"obfuscated":false},{"text":"None","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":true,"obfuscated":false}]','{"text":" ● Action Type: Projectile","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" ● Description:","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"   ● Slow enemy down on impact","color":"green"}','{"text":"     + Inflict Slowness (Lv 3)","color":"yellow"}','{"text":"      for 5 seconds","color":"yellow"}']},HideFlags:4,Unbreakable:1b,element:4,spell_id:2,droppable:-1,abilityTool:2} 1
execute unless score @s actionID matches 10..11 run item replace entity @s hotbar.6 with shield{display:{Name:'{"text":"Parry (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,droppable:-1,abilityTool:3} 1
execute if score @s actionID matches 10..11 run item replace entity @s hotbar.6 with barrier{display:{Name:'{"text":"Parry (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,droppable:-1,abilityTool:3} 1
execute unless score @s chr.abi4.cd matches 1.. run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Trap Summoning","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Preparation Time:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 4.5s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ● Action Type: Auto Block Placing","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":"The Tamer reaches into his bag of tricks "}','{"text":"and conjures various traps onto the battlefield."}','{"text":"These traps can include snares, bear traps,"}','{"text":"caltrops, and more. Placing these traps"}','{"text":"strategically can hinder enemy movement,"}','{"text":"create area denial, and control the flow of battle."}']},HideFlags:4,Unbreakable:1b,element:4,spell_id:5,droppable:-1,abilityTool:4} 1
execute if score @s chr.abi4.cd matches 1.. run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Trap Summoning","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Preparation Time:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 4.5s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ● Action Type: Auto Block Placing","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":"The Tamer reaches into his bag of tricks "}','{"text":"and conjures various traps onto the battlefield."}','{"text":"These traps can include snares, bear traps,"}','{"text":"caltrops, and more. Placing these traps"}','{"text":"strategically can hinder enemy movement,"}','{"text":"create area denial, and control the flow of battle."}']},HideFlags:4,Unbreakable:1b,element:4,spell_id:5,droppable:-1,abilityTool:4} 1

#item replace entity @s weapon.mainhand from entity @p weapon.mainhand
#item replace entity @s weapon.offhand from entity @p weapon.offhand
item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result score @s threeAnimRandom run loot spawn 320 1 -246 loot core:three_anim
execute if score @s threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200003}
execute if score @s threeAnimRandom matches 2 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200004}
execute if score @s threeAnimRandom matches 3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200005}
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s animateSysTime 1
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 9 run execute if score @s actionID matches 3 run function core:2dlogic/morph/tamer_addon/state_3

execute if score @s animate matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200006}
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players add @s animateSysTime 2
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=armor_stand] animate matches 40 run execute if score @s actionID matches 4 run function core:2dlogic/morph/tamer_addon/state_4


execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 4.. run effect give @s slowness 1 8 true
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 4.. run effect give @s minecraft:jump_boost 1 128
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 4 run effect clear @s slowness
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 4 run effect clear @s minecraft:jump_boost
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:200007}

execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 6.. run scoreboard players set @s animateSysTime 8388663
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 1..5 run scoreboard players remove @s animateSysTime 1
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 1.. run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 1.. run scoreboard players add @s chr.cg.blockTimer 1
execute unless score @s actionID matches 10..11 run execute if score @s shieldOn matches 0 run scoreboard players set @s chr.cg.blockTimer 0


## PARRY AND CANCEL ##################################
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200008}
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run scoreboard players add @s animateSysTime 6
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 10 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 5 run effect give @s slowness 1 2 true
execute if score @s animate matches 15 run execute if score @s actionID matches 10 run function core:2dlogic/morph/tamer_addon/state_10a
execute if score @s animate matches 17 run execute if score @s actionID matches 10 run scoreboard players set @s actionID 0



execute if score @s animate matches 1 run execute if score @s actionID matches 11 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800109}
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players add @s animateSysTime 5
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players set @s impactCooldown 90
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 11 run function core:2dlogic/morph/cg_addon/state_11a
execute if score @s animate matches 97 run execute if score @s actionID matches 11 run scoreboard players set @s actionID 0

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result score @s threeAnimRandom run loot spawn 320 1 -246 loot core:three_anim
execute if score @s threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200003}
execute if score @s threeAnimRandom matches 2 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200004}
execute if score @s threeAnimRandom matches 3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200005}
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s animateSysTime 1
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 9 run execute if score @s actionID matches 3 run function core:2dlogic/morph/tamer_addon/state_3

execute unless score @s chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run item replace entity @s armor.head with minecraft:potion{CustomModelData:200009}
execute unless score @s chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute unless score @s chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute unless score @s chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players add @s animateSysTime 10
execute unless score @s chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime %= @s animateMax
execute unless score @s chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=armor_stand] animate matches 70 run execute if score @s actionID matches 5 run function core:2dlogic/morph/tamer_addon/state_5
execute unless score @s chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players add @s chr.abi4.cd 600




######################################################


## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s armor.head with minecraft:potion{CustomModelData:200001}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0

# TAMER EXTRA SKIP
execute if score @s animate matches 1.. run execute if score @s actionID matches 3 run execute if score @s animate matches 11.. run scoreboard players set @s animate 0


## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1