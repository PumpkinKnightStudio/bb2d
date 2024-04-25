# PASSIVE
#scoreboard players remove @s[scores={hana.active.nature=1..}] hana.active.nature 1
#scoreboard players set @s reduceDMG 20

# RANDOM ANIMATION ID
scoreboard players remove @s[scores={chr.abi4.cd=1..}] chr.abi4.cd 1
scoreboard players remove @s[scores={chr.abi3.cd=1..}] chr.abi3.cd 1
scoreboard players remove @s[scores={chr.abi5.cd=1..}] chr.abi5.cd 1
scoreboard players remove @s[scores={chr.ult.cd=1..}] chr.ult.cd 1
#scoreboard players add @s[type=armor_stand] threeAnimRandom 1
#scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
execute if score @s holdingActionID matches 2 run title @s actionbar ["",{"text":"Stored: ","color":"white"},{"score":{"name":"@s","objective":"leo.absorb.physical"},"color":"red"},{"text":" Damage Points","color":"white"}]
execute if score @s holdingActionID matches 3 run title @s actionbar ["",{"text":"Dealing: ","color":"white"},{"score":{"name":"@s","objective":"leo.hold.charge"},"color":"red"},{"text":"/"},{"score":{"name":"@s","objective":"leo.absorb.physical"},"color":"red"},{"text":" Damage Points","color":"white"}]
execute if score @s holdingActionID matches 1 run execute if score @s leo.rift.maker matches 1.. run title @s actionbar ["",{"text":"(Ultimate) Rift Summoning Activated ","color":"gold"}]
execute if score @s holdingActionID matches 1 run execute if score @s leo.rift.maker matches 1 run title @s actionbar ["",{"text":"(Ultimate) Rift Summoning Deactivated ","color":"red"}]
scoreboard players remove @s[scores={leo.rift.maker=1..}] leo.rift.maker 1

execute if score @s leo.da.launchC matches 1.. run execute unless block ~ ~-0.1 ~ air run scoreboard players set @s leo.da.launchC 0

execute if score @s animate matches 11.. run execute if score @s actionID matches 4 run execute if score @s walking matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800610}
#################

## ITEM NOTIFIER


#################

execute if score @s[type=armor_stand,tag=model] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:800601}

execute if score @s[type=armor_stand,tag=model] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800610}
execute if score @s sneakToggle matches 1 run execute unless score @s actionID matches 31 run execute if score @s animate matches 0 run execute if score @s walking matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800602}


##################
execute if score @s holdingActionID matches 3 run execute if score @s shieldOn matches 6.. run execute if score @s leo.absorb.physical matches 5.. run scoreboard players add @s leo.hold.charge 5
execute if score @s holdingActionID matches 3 run execute if score @s shieldOn matches 6.. run execute if score @s leo.absorb.physical matches 5.. run scoreboard players remove @s leo.absorb.physical 5
execute if score @s holdingActionID matches 3 run execute if score @s shieldOn matches 6.. run execute if score @s leo.hold.charge matches 5.. run execute at @s run function core:2dlogic/morph/leo_addon/voice
execute if score @s holdingActionID matches 3 run execute if score @s shieldOn matches 5 run execute if score @s leo.hold.charge matches 5.. run scoreboard players set @s shieldOn 1
#execute if score @s holdingActionID matches 3 run execute if score @s shieldOn matches 6.. run execute if score @s leo.hold.charge matches 5.. run execute at @s positioned -161 ~ ~ run function core:particle/particle_rescue/animate
execute if score @s leo.hold.charge matches 1.. run execute if score @s shieldOn matches 1 run function core:spells/morph/leo/reverse/init



execute if score @s sneakToggle matches 0 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Titan\'s Swing (Sneak to Switch)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Leo swings his massive blade with the strength"}','{"text":"of a titan, unleashing a devastating cleave that"}','{"text":"sends enemies flying and inflicts heavy"}','{"text":"This attack possesses the mystical"}','{"text":"ability to bypass shields and sunder armor, making"}','{"text":"t exceptionally effective against heavily"}','{"text":"fortified adversaries."}']},HideFlags:4,Unbreakable:1b,CustomModelData:380001,element:15,spell_id:1,droppable:-1,abilityTool:1} 1
execute if score @s sneakToggle matches 1 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Titan\'s Swipe (Sneak to Switch)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Leo swings his massive blade with the strength"}','{"text":"of a titan, unleashing a devastating cleave that"}','{"text":"sends enemies flying and inflicts heavy"}','{"text":"This attack possesses the mystical"}','{"text":"ability to bypass shields and sunder armor, making"}','{"text":"t exceptionally effective against heavily"}','{"text":"fortified adversaries."}']},HideFlags:4,Unbreakable:1b,CustomModelData:380001,element:15,spell_id:1,droppable:-1,abilityTool:1} 1
#execute unless score @s chr.abi3.cd matches 1.. run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Axe Spin","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator whirls his axe in a wide arc"}','{"text":"striking all nearby enemies with a devastating"}','{"text":"spinning attack. This ability deals moderate damage"}','{"text":"to all foes within range and can be especially"}','{"text":"effective against groups of enemies or clustered opponents."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:15,spell_id:2,droppable:-1,abilityTool:2} 1
#execute if score @s chr.abi3.cd matches 1.. run item replace entity @s hotbar.5 with barrier{display:{Name:'{"text":"Axe Spin","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator whirls his axe in a wide arc"}','{"text":"striking all nearby enemies with a devastating"}','{"text":"spinning attack. This ability deals moderate damage"}','{"text":"to all foes within range and can be especially"}','{"text":"effective against groups of enemies or clustered opponents."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:15,spell_id:2,droppable:-1,abilityTool:2} 1
item replace entity @s hotbar.5 with shield{display:{Name:'{"text":"Warden\'s Defense","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Leo raises his blade in a stalwart defense, "}','{"text":"intercepting incoming attacks and absorbing"}','{"text":"their essence. With each blocked strike,"}','{"text":"Leo channels the captured energy into his"}','{"text":"sword, empowering his next move with"}','{"text":"increased potency. The duration of the defense"}','{"text":"depends on the ferocity of the assault, with"}','{"text":"more powerful strikes granting greater energy."}']},CustomModelData:140002,HideFlags:4,Unbreakable:1b,droppable:-1,abilityTool:2} 1
execute if score @s holdingActionID matches 3 run item replace entity @s hotbar.5 with barrier{display:{Name:'{"text":"Warden\'s Defense","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Leo raises his blade in a stalwart defense, "}','{"text":"intercepting incoming attacks and absorbing"}','{"text":"their essence. With each blocked strike,"}','{"text":"Leo channels the captured energy into his"}','{"text":"sword, empowering his next move with"}','{"text":"increased potency. The duration of the defense"}','{"text":"depends on the ferocity of the assault, with"}','{"text":"more powerful strikes granting greater energy."}']},CustomModelData:000000,HideFlags:4,Unbreakable:1b,droppable:-1,abilityTool:2} 1

execute unless score @s chr.abi4.cd matches 1.. run execute if score @s leo.absorb.physical matches 1.. run item replace entity @s hotbar.6 with shield{display:{Name:'{"text":"Ethereal Surge (Hold to charge)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Leo releases the stored energy within his blade"}','{"text":"in a radiant burst of power, sending forth"}','{"text":"an ethereal surge that courses through his foes."}','{"text":"This wave of energy damages and repels"}','{"text":"enemies in its path, with its strength and"}','{"text":"ange directly proportional to the amount of energy"}','{"text":"amassed. It serves as a formidable retaliation against"}','{"text":"multiple adversaries."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:15,spell_id:3,droppable:-1,abilityTool:3} 1
execute if score @s chr.abi4.cd matches 1.. run item replace entity @s hotbar.6 with barrier{display:{Name:'{"text":"Ethereal Surge","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Leo releases the stored energy within his blade"}','{"text":"in a radiant burst of power, sending forth"}','{"text":"an ethereal surge that courses through his foes."}','{"text":"This wave of energy damages and repels"}','{"text":"enemies in its path, with its strength and"}','{"text":"ange directly proportional to the amount of energy"}','{"text":"amassed. It serves as a formidable retaliation against"}','{"text":"multiple adversaries."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:15,spell_id:3,droppable:-1,abilityTool:3} 1
execute unless score @s leo.absorb.physical matches 1.. run item replace entity @s hotbar.6 with barrier{display:{Name:'{"text":"Ethereal Surge","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Leo releases the stored energy within his blade"}','{"text":"in a radiant burst of power, sending forth"}','{"text":"an ethereal surge that courses through his foes."}','{"text":"This wave of energy damages and repels"}','{"text":"enemies in its path, with its strength and"}','{"text":"ange directly proportional to the amount of energy"}','{"text":"amassed. It serves as a formidable retaliation against"}','{"text":"multiple adversaries."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:15,spell_id:3,droppable:-1,abilityTool:3} 1

#execute unless score @s chr.abi5.cd matches 1.. run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Crimson Reckoning","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator slams his axe into the ground, "}','{"text":"channeling dark energy through its blade."}','{"text":"A crimson sword erupts from the ground beneath the"}','{"text":"targeted enemy. If the enemy fails to dodge the attack,"}','{"text":"they become paralyzed momentarily. After a brief"}','{"text":"delay, the sword explodes, dealing massive damage to the"}','{"text":"paralyzed foe and any nearby enemies caught in the blast radius"}','{"text":"This ability can turn the tide of battle by incapacitating"}','{"text":"key targets and causing chaos among enemy ranks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:4,droppable:-1,abilityTool:4} 1
#execute if score @s chr.abi5.cd matches 1.. run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Crimson Reckoning","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Fallen Devastator slams his axe into the ground, "}','{"text":"channeling dark energy through its blade."}','{"text":"A crimson sword erupts from the ground beneath the"}','{"text":"targeted enemy. If the enemy fails to dodge the attack,"}','{"text":"they become paralyzed momentarily. After a brief"}','{"text":"delay, the sword explodes, dealing massive damage to the"}','{"text":"paralyzed foe and any nearby enemies caught in the blast radius"}','{"text":"This ability can turn the tide of battle by incapacitating"}','{"text":"key targets and causing chaos among enemy ranks."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:14,spell_id:4,droppable:-1,abilityTool:4} 1


execute unless score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Test (Ultimate)","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Radius: 12","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Cooldown: 60 secs","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"The Clock Maker harnesses the full extent"}','{"text":"of his temporal mastery, "}','{"text":"unleashing a wave of temporal energy that"}','{"text":"freezes time within a designated area."}','{"text":"Enemies caught within the stasis field are"}','{"text":"temporarily immobilized, rendering them helpless"}','{"text":"targets for a brief duration."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:15,spell_id:5,droppable:-1,abilityTool:5} 1
execute if score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with barrier{display:{Name:'{"text":"Test (Ultimate)","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Radius: 12","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Cooldown: 60 secs","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"The Clock Maker harnesses the full extent"}','{"text":"of his temporal mastery, "}','{"text":"unleashing a wave of temporal energy that"}','{"text":"freezes time within a designated area."}','{"text":"Enemies caught within the stasis field are"}','{"text":"temporarily immobilized, rendering them helpless"}','{"text":"targets for a brief duration."}']},HideFlags:4,Unbreakable:1b,CustomModelData:000000,element:15,spell_id:5,droppable:-1,abilityTool:5} 1


item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result score @s threeAnimRandom run loot spawn 320 1 -246 loot core:three_anim

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute if score @s previousAnimation = @s threeAnimRandom run execute if score @s threeAnimRandom matches 3 run scoreboard players set @s threeAnimRandom 1
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute if score @s previousAnimation = @s threeAnimRandom run execute if score @s threeAnimRandom matches 1..2 run scoreboard players add @s threeAnimRandom 1

execute unless score @s threeAnimRandom = @p threeAnimRandom run scoreboard players operation @s threeAnimRandom = @p threeAnimRandom

scoreboard players operation @s previousAnimation = @s threeAnimRandom

execute if score @s threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800603}
execute if score @s threeAnimRandom matches 2 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800604}
execute if score @s threeAnimRandom matches 3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800604}

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute if score @s threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s[tag=model] animateSysTime 3
execute if score @s threeAnimRandom matches 2..3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s[tag=model] animateSysTime 30
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s animate matches 1 run execute if score @s actionID matches 3 run function core:2dlogic/morph/hana_morph/attack_cooldown
execute if score @s[type=player] animate matches 12 run execute if score @s actionID matches 3 run function core:2dlogic/morph/leo_addon/state_3
execute if score @s[type=player] animate matches 2 run execute if score @s actionID matches 3 run execute if block ~ ~-0.1 ~ air run function core:2dlogic/morph/leo_addon/state_3a
execute if score @s[type=player] animate matches 3 run effect give @s slowness 1 10 true
execute if score @s[type=player] animate matches 22 run effect clear @s slowness


execute if score @s animate matches 1 run execute if score @s actionID matches 31 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800611}

execute if score @s animate matches 1 run execute if score @s actionID matches 31 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 31 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 31 run scoreboard players add @s[tag=model] animateSysTime 3

execute if score @s animate matches 1 run execute if score @s actionID matches 31 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 31 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s animate matches 1 run execute if score @s actionID matches 3 run function core:2dlogic/morph/hana_morph/attack_cooldown
execute if score @s[type=player] animate matches 15 run execute if score @s actionID matches 31 run function core:2dlogic/morph/leo_addon/state_31
execute if score @s[type=player] animate matches 3 run effect give @s slowness 1 10 true


execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 2 run execute if score @s actionID matches 4 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800607}
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 2 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 2 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 2 run execute if score @s actionID matches 4 run scoreboard players remove @s[tag=model] animateSysTime 55
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 2 run execute if score @s actionID matches 4 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.abi3.cd matches 1.. run execute if score @s animate matches 2 run execute if score @s actionID matches 4 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 18 run execute if score @s actionID matches 4 run function core:2dlogic/morph/leo_addon/state_4
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run playsound minecraft:leo.chargeup voice @a ~ ~ ~ 1 1


execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800507}
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players add @s[tag=model] animateSysTime 2
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.abi4.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 5 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 34 run execute if score @s actionID matches 5 run effect give @s slowness 3 10 true
execute if score @s animate matches 34 run execute if score @s actionID matches 5 run function core:2dlogic/morph/devast_addon/state_5

#execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run item replace entity @s[tag=model] armor.head with minecraft:potion{CustomModelData:800507}
#execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s[tag=model] animateSysTime = .gametime arenaTime
#execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s[tag=model] animateSysTime %= .24000 animateSysTime
#execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players add @s[tag=model] animateSysTime 2
#execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players operation @s[tag=model] animateSysTime %= @s animateMax
#execute unless score @s[type=armor_stand] chr.abi5.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run execute store result entity @s[tag=model] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s animate matches 34 run execute if score @s actionID matches 6 run effect give @s slowness 3 10 true
#execute if score @s animate matches 34 run execute if score @s actionID matches 6 run execute as @s[type=armor_stand] run function core:2dlogic/morph/leo_addon/state_6
#execute if score @s animate matches 34 run execute if score @s actionID matches 6 run execute as @s[type=player] run scoreboard players set @s chr.abi5.cd 300
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run execute as @s[type=armor_stand] run scoreboard players set @s chr.ult.cd 1000



execute if score @s animate matches 0 run execute if score @s shieldOn matches 2.. run effect give @s slowness 1 8 true
execute if score @s animate matches 0 run execute if score @s shieldOn matches 6.. run effect give @s minecraft:jump_boost 1 128
execute if score @s animate matches 0 run execute if score @s shieldOn matches 1 run effect clear @s minecraft:jump_boost
execute if score @s animate matches 0 run execute if score @s shieldOn matches 1 run effect clear @s slowness
execute if score @s holdingActionID matches 2 run execute if score @s animate matches 0 run execute if score @s shieldOn matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800605}
execute if score @s holdingActionID matches 3 run execute if score @s animate matches 0 run execute if score @s shieldOn matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:800609}

execute if score @s animate matches 0 run execute if score @s shieldOn matches 6.. run scoreboard players set @s animateSysTime 8388640
execute if score @s animate matches 0 run execute if score @s shieldOn matches 1..5 run scoreboard players operation @s animateSysTime -= @s shieldOn
execute if score @s animate matches 0 run execute if score @s shieldOn matches 1.. run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime

execute if score @s animate matches 0 run execute if score @s shieldOn matches 6.. run scoreboard players set @s reduceDMG 200
execute if score @s animate matches 0 run execute if score @s shieldOn matches 1 run scoreboard players set @s reduceDMG 0

execute if score @s[type=player] animate matches 1.. run scoreboard players set @s shieldOn 0

## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
#execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s[type=armor_stand,tag=model] armor.head with minecraft:potion{CustomModelData:800601}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0
execute if score @s animate matches 0 run execute if score @s actionID matches 3.. run scoreboard players set @s actionID 0

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12


execute if score @s animate matches 1.. run execute if score @s actionID matches 3 run execute if score @s animate matches 28.. run scoreboard players set @s animate 0

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
