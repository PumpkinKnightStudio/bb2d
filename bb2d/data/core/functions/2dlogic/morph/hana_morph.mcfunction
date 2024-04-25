# PASSIVE
scoreboard players remove @s[scores={hana.active.nature=1..}] hana.active.nature 1
scoreboard players set @s reduceDMG 20

# RANDOM ANIMATION ID

#scoreboard players add @s[type=armor_stand] threeAnimRandom 1
#scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
scoreboard players remove @s[scores={hana.gr.cd=1..}] hana.gr.cd 1
scoreboard players remove @s[scores={hana.ne.cd=1..}] hana.ne.cd 1



#################

## ITEM NOTIFIER

execute at @s[nbt={SelectedItem:{id:"minecraft:barrier",tag:{abilityTool:5}}}] run title @s actionbar [{"text":"Number of opponents defeated: ","color":"yellow"},{"score":{"name":"@s","objective":"hana.summon.cd"},"color":"yellow"},{"text":"/3","color":"yellow"}]


#################

execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:700001}

execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:700002}


##################


item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Ethereal Blade (Basic Attack)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.5s","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 3","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ● Damage Type: Physical","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":"Hana wields an ethereal stone sword"}','{"text":"infused with nature\'s energy."}','{"text":"With each swing, the sword releases bursts"}','{"text":"of energy that deal moderate damage to"}','{"text":"enemies in front of her. Successful hits"}','{"text":"have a chance to reduce the cooldown"}','{"text":"of her other abilities."}']},HideFlags:4,Unbreakable:1b,CustomModelData:370001,element:9,spell_id:1,droppable:-1,abilityTool:1} 1


execute unless score @s hana.gr.cd matches 1.. run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Gravity Raise (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Hana taps into the essence of her connection"}','{"text":"with nature to manipulate gravity around her."}','{"text":"She raises the gravity field, causing enemies"}','{"text":"within a certain radius to levitate momentarily."}','{"text":"Levitated enemies become vulnerable to follow-up"}','{"text":"attacks, and their movements are disrupted,"}','{"text":"making them easier to target."}']},Unbreakable:1b,CustomModelData:370003,element:9,spell_id:2,droppable:-1,abilityTool:2} 1

execute if score @s hana.gr.cd matches 1.. run item replace entity @s hotbar.5 with barrier{display:{Name:'{"text":"Gravity Raise (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},Unbreakable:1b,element:9,spell_id:2,droppable:-1,abilityTool:2} 1

item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Galestrike (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Hana charges her ethereal blade with "}','{"text":"gusts of wind, then swings it in a wide arc,"}','{"text":"unleashing a powerful strike. This attack"}','{"text":"not only deals significant damage to enemies"}','{"text":"hit by the swing but also generates a shockwave"}','{"text":"of wind that pushes nearby enemies away from her."}','{"text":"It\'s a versatile ability for creating distance"}','{"text":"between Hana and her foes or disrupting"}','{"text":"enemy formations."}']},Unbreakable:1b,CustomModelData:350005,element:9,spell_id:3,droppable:-1,abilityTool:3} 1


#execute if score @s hana.gr.cd matches 1.. run item replace entity @s hotbar.8 with barrier{display:{Name:'{"text":"War Cry of Unity (Ultimate Ability)","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Cast Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 1.6s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Cast Cooldown:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 1.4s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Cast Radius:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" Infinite","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Ability Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"60s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ➵ Increase allies speed","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":"  ➵ Increase for","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 7s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":"  ➵ Increase by ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"15%","color":"green"}]','{"text":"  ➵ Non Stackable","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" ➵ Decrease allies abilities cooldown","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":"  ➵ Decrease for","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 7s","color":"green"}]','[{"text":"  ➵ Decrease by ","color":"white"},{"text":"x2","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},Unbreakable:1b,element:7,spell_id:2,droppable:-1,abilityTool:5} 1

execute unless score @s hana.ne.cd matches 1.. run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Nature\'s Embrace (Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":"Active Radius: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"5 meters","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":"Ability Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"50s","color":"red"}]','[{"text":"Restore: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"1:1 Health","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"Hana taps into the healing energy of the forest,"}','{"text":"surrounding herself with an aura of rejuvenation."}','{"text":"Allies within the aura experience gradual healing"}','{"text":"over time, and any negative status effects on"}','{"text":"them are cleansed. This ability allows Hana to"}','{"text":"support her teammates and maintain control over"}','{"text":"the battlefield."}']},HideFlags:4,Unbreakable:1b,CustomModelData:370004,element:9,spell_id:4,droppable:-1,abilityTool:4} 1

execute if score @s hana.ne.cd matches 1.. run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Nature\'s Embrace (Ability)","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},Unbreakable:1b,element:9,spell_id:4,droppable:-1,abilityTool:4} 1

execute if score @s hana.summon.cd matches 3.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Summon Spectral Deer (Ultimate)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":""},{"text":" ● Cast Duration:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" ~6s.","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Cast Radius:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" Infinite","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Ability Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"45s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},Unbreakable:1b,CustomModelData:370005,element:9,spell_id:5,droppable:-1,abilityTool:5} 1
execute unless score @s hana.summon.cd matches 3.. run item replace entity @s hotbar.8 with barrier{display:{Name:'{"text":"Summon Spectral Deer (Ultimate)","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":""},{"text":" ● Cast Duration:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" ~6s.","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Cast Radius:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" Infinite","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Ability Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"45s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},Unbreakable:1b,element:9,spell_id:5,droppable:-1,abilityTool:5} 1


item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result score @s threeAnimRandom run loot spawn 320 1 -246 loot core:three_anim
execute if score @s threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:700003}
execute if score @s threeAnimRandom matches 2 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:700004}
execute if score @s threeAnimRandom matches 3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:700005}
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s animateSysTime 1
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s animate matches 1 run execute if score @s actionID matches 3 run function core:2dlogic/morph/hana_morph/attack_cooldown
execute if score @s animate matches 6 run execute if score @s actionID matches 3 run function core:2dlogic/morph/hana_addon/state_3



execute unless score @s[type=armor_stand] hana.gr.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run item replace entity @s armor.head with minecraft:potion{CustomModelData:700006}
execute unless score @s[type=armor_stand] hana.gr.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] hana.gr.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] hana.gr.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players add @s animateSysTime 2
execute unless score @s[type=armor_stand] hana.gr.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] hana.gr.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 4 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 11 run execute if score @s actionID matches 4 run function core:2dlogic/morph/hana_addon/state_4
execute unless score @s[type=armor_stand] hana.gr.cd matches 1.. run execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 4 run effect give @s slowness 1 3 true
execute if score @s animate matches 11 run execute if score @s actionID matches 4 run scoreboard players set @s hana.gr.cd 300




execute if score @s animate matches 1 run execute if score @s actionID matches 5 run item replace entity @s armor.head with minecraft:potion{CustomModelData:700009}
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players add @s animateSysTime 2
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s actionID matches 5 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 5 run effect give @s slowness 1 2 true
execute if score @s animate matches 15 run execute if score @s actionID matches 5 run function core:2dlogic/morph/hana_addon/state_5


execute unless score @s[type=armor_stand] hana.ne.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 6 run function core:2dlogic/morph/hana_morph/ability6
execute unless score @s[type=armor_stand] hana.ne.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 6 run function core:2dlogic/morph/hana_addon/state_6
execute unless score @s[type=armor_stand] hana.ne.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 47 run execute if score @s actionID matches 6 run function core:2dlogic/morph/hana_addon/state_6a
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run effect give @s slowness 3 8 true
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run effect give @s jump_boost 3 128 true
#execute if score @s animate matches 48 run execute if score @s actionID matches 7 run scoreboard players set @s hana.summon.cd 0
execute if score @s[type=armor_stand] animate matches 47 run execute if score @s actionID matches 6 run scoreboard players add @s hana.active.nature 200
execute if score @s[type=player] hana.active.nature matches 1.. run function core:2dlogic/morph/hana_addon/state_6p
execute if score @s animate matches 1 run execute if score @s actionID matches 6 run scoreboard players set @s hana.ne.cd 1000

execute if score @s[type=armor_stand] hana.active.nature matches 1.. run scoreboard players operation @s[type=armor_stand] particle.nature1 = @s hana.active.nature
execute if score @s[type=armor_stand] hana.active.nature matches 1.. run scoreboard players operation @s[type=armor_stand] particle.nature1 %= .activator particle.nature1
execute if score @s[type=armor_stand] particle.nature1 matches 0 run execute at @s rotated as @a run function core:particle_generator/nature_circle




execute if score @s[type=armor_stand] hana.summon.cd matches 3.. run execute if score @s animate matches 1 run execute if score @s actionID matches 7 run function core:2dlogic/morph/hana_morph/ability7
execute if score @s[type=armor_stand] hana.summon.cd matches 3.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run function core:2dlogic/morph/hana_addon/state_7
execute if score @s[type=armor_stand] hana.summon.cd matches 3.. run execute if score @s[type=armor_stand] animate matches 48 run execute if score @s actionID matches 7 run function core:2dlogic/morph/hana_addon/state_7a
execute if score @s hana.summon.cd matches 3.. run execute if score @s animate matches 1 run execute if score @s actionID matches 7 run effect give @s slowness 3 8 true
execute if score @s hana.summon.cd matches 3.. run execute if score @s animate matches 1 run execute if score @s actionID matches 7 run effect give @s jump_boost 3 128 true
execute if score @s hana.summon.cd matches 3.. run execute if score @s animate matches 48 run execute if score @s actionID matches 7 run scoreboard players set @s hana.summon.cd 0




## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s armor.head with minecraft:potion{CustomModelData:700001}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12


execute if score @s animate matches 1.. run execute if score @s actionID matches 3 run execute if score @s animate matches 9.. run scoreboard players set @s animate 0

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
