# PASSIVE

scoreboard players set @s reduceDMG 1

# RANDOM ANIMATION ID

scoreboard players add @s[type=armor_stand] threeAnimRandom 1
scoreboard players set @s[type=armor_stand,scores={threeAnimRandom=4..}] threeAnimRandom 1
scoreboard players remove @s[scores={atk.orc.cd =1..}] atk.orc.cd 1

scoreboard players remove @s[scores={orc.ult.active =1..}] orc.ult.active 1

execute if score @s[type=armor_stand] orc.ult.active matches 1.. run scoreboard players set @s atk.orc.cd 0
execute if score @s[type=player] orc.ult.active matches 1.. run scoreboard players add @s[type=player] strengthEF 1
execute if score @s[type=player] orc.ult.active matches 1.. run scoreboard players add @s[type=player] speedEF 1

execute if score @s[type=player] chr.ult.cd matches 1 run tellraw @s ["",{"text":"Skill Notification: ","color":"dark_aqua"},{"text":"Your Ultimate is now ready.","color":"dark_aqua"}]

#effect give @s slowness 1 3 true

#################

execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:600001}

execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:600002}



execute unless score @s[type=player] atk.orc.cd matches 1.. run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Mighty Swing (Basic Attack)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.6s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Attack Cooldown:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.9s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 4","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"14","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Impact Power:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 25","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Heavy Physical","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Orc General swings his massive"}','{"text":"war axe in a wide arc. This attack"}','{"text":"has a chance to unleash a powerful"}','{"text":"knockback effect, pushing enemies"}','{"text":"away from him. While the damage may"}','{"text":"be slightly lower, the potential"}','{"text":"knockback can disrupt enemy formations"}','{"text":"and create tactical advantages."}']},HideFlags:4,Unbreakable:1b,CustomModelData:360001,element:8,spell_id:1,droppable:-1,abilityTool:1} 1


execute if score @s[type=player] atk.orc.cd matches 1.. run item replace entity @s hotbar.4 with barrier{display:{Name:'{"text":"Mighty Swing (Basic Attack)","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.6s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Attack Cooldown:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.9s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 4","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"14","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Impact Power:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 25","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Heavy Physical","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},Unbreakable:1b,element:8,spell_id:1,droppable:-1,abilityTool:1} 1


item replace entity @s hotbar.5 with shield{display:{Name:'{"text":"Iron Will (Defensive Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Orc General enters a defensive stance,"}','{"text":"planting his feet and raising his shield."}','{"text":"In this position, he becomes immovable for"}','{"text":"a short duration, blocking all incoming damage."}','{"text":"However, he can\'t move or attack"}','{"text":"during this time, focusing solely on"}','{"text":"protecting himself and his allies."}']},HideFlags:4,Unbreakable:1b,droppable:-1,abilityTool:2} 1

item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Axe Throw (Ranged Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Damage: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"6","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Orc General hurls his war axe at"}','{"text":"a distant enemy, dealing ranged damage"}','{"text":"and inflicting a brief stun. After a"}','{"text":"short delay, the axe returns to the"}','{"text":"Orc General\'s hand, allowing him to"}','{"text":"call it back and continue the fight."}']},HideFlags:4,Unbreakable:1b,element:8,spell_id:3,droppable:-1,abilityTool:3} 1

execute unless score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Warlord\'s Fury (Ultimate Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Damage: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"12","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Orc General hurls his war axe at"}','{"text":"a distant enemy, dealing ranged damage"}','{"text":"and inflicting a brief stun. After a"}','{"text":"short delay, the axe returns to the"}','{"text":"Orc General\'s hand, allowing him to"}','{"text":"call it back and continue the fight."}']},HideFlags:4,Unbreakable:1b,element:8,spell_id:5,droppable:-1,abilityTool:5} 1
execute if score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with barrier{display:{Name:'{"text":"Warlord\'s Fury (Ultimate Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Damage: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"12","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Orc General hurls his war axe at"}','{"text":"a distant enemy, dealing ranged damage"}','{"text":"and inflicting a brief stun. After a"}','{"text":"short delay, the axe returns to the"}','{"text":"Orc General\'s hand, allowing him to"}','{"text":"call it back and continue the fight."}']},HideFlags:4,Unbreakable:1b,element:8,spell_id:5,droppable:-1,abilityTool:5} 1


##################

#item replace entity @s weapon.mainhand from entity @p weapon.mainhand
#item replace entity @s weapon.offhand from entity @p weapon.offhand
item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:600003}
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] threeAnimRandom matches 2 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:600004}
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute if score @s animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:600005}
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s animateSysTime 1
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .36 numValue
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=player] animate matches 1 run execute if score @s actionID matches 3 run effect give @s slowness 1 12 true
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s animate matches 12 run execute if score @s actionID matches 3 run function core:2dlogic/morph/orc_addon/state_3
execute unless score @s[type=armor_stand] atk.orc.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 34 run execute if score @s actionID matches 3 run scoreboard players set @s atk.orc.cd 15

execute if score @s animate matches 1 run execute if score @s actionID matches 4 run item replace entity @s armor.head with minecraft:potion{CustomModelData:600007}
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run scoreboard players add @s animateSysTime 5
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run effect give @s slowness 4 12 true
execute if score @s[type=armor_stand] animate matches 10 run execute if score @s actionID matches 4 run function core:2dlogic/morph/orc_addon/state_4

execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s animate matches 1 run execute if score @s actionID matches 7 run item replace entity @s armor.head with minecraft:potion{CustomModelData:600009}
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players add @s animateSysTime 3
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s animateSysTime %= @s animateMax
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute unless score @s[type=armor_stand] chr.ult.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run function core:2dlogic/morph/orc_addon/state_7


execute if score @s shieldOn matches 2.. run effect give @s slowness 1 8 true
execute if score @s shieldOn matches 2.. run effect give @s minecraft:jump_boost 1 128
execute if score @s shieldOn matches 1 run effect clear @s slowness
execute if score @s shieldOn matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:600006}

execute if score @s shieldOn matches 6.. run scoreboard players set @s animateSysTime 8388640
execute if score @s shieldOn matches 1..5 run scoreboard players operation @s animateSysTime -= @s shieldOn
execute if score @s shieldOn matches 1.. run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime

execute if score @s shieldOn matches 6.. run scoreboard players set @s reduceDMG 200

## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s armor.head with minecraft:potion{CustomModelData:600001}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1

