
scoreboard players add @s[type=armor_stand] twoAnimRandom 1
scoreboard players set @s[type=armor_stand,scores={twoAnimRandom=3..}] twoAnimRandom 1

scoreboard players remove @s[scores={a.bull.roar.cd=1..}] a.bull.roar.cd 1
scoreboard players remove @s[scores={a.bull.push.cd=1..}] a.bull.push.cd 1

#effect give @s slowness 2 3 true
effect give @s slowness 1 1 true

scoreboard players set @s reduceDMG 20

item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Raging Charge (Basic Attack)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 1.6s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Attack Cooldown:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.2s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 12","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Heavy Physical","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Minotaur Warlord charges forward, "}','{"text":"impaling enemies with his massive"}','{"text":"battle axe. This attack has a chance to"}','{"text":"inflict bleeding damage over time,"}','{"text":"causing affected enemies to take damage"}','{"text":"for a short duration after being hit."}']},HideFlags:4,Unbreakable:1b,CustomModelData:340001,element:6,spell_id:1,droppable:-1,abilityTool:1} 1


item replace entity @s hotbar.5 with shield{display:{Name:'{"text":"Stoneguard Stance (Defensive Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"The Minotaur Warlord enters a defensive stance,"}','{"text":"raising his battle axe to block incoming attacks."}','{"text":"While in this stance, he blocks incoming damage"}','{"text":"and becomes resistant to crowd control effects."}','{"text":"However, his movement speed is completely reduced."}']},HideFlags:4,Unbreakable:1b,CustomModelData:340004,droppable:-1,abilityTool:2} 1




execute unless score @s a.bull.push.cd matches 1.. run item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Gore Assault (Charge Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Casting Speed: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"1.5s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Casting Duration: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"3s","color":"green"}]','[{"text":""},{"text":" ● Casting Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"0.5s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false}]','[{"text":" ● Action Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Damage","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Minotaur Warlord charges headlong"}','{"text":"into enemies with his horns lowered,"}','{"text":"dealing massive damage and knocking them back."}','{"text":"This ability is especially effective at "}','{"text":"breaking through enemy lines and creating"}','{"text":"chaos in the heat of battle."}']},HideFlags:4,Unbreakable:1b,CustomModelData:340006,element:6,spell_id:2,droppable:-1,abilityTool:3} 1
execute if score @s a.bull.push.cd matches 1.. run item replace entity @s hotbar.6 with barrier{display:{Name:'{"text":"Gore Assault (Charge Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Casting Speed: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"1.5s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Casting Duration: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"3s","color":"green"}]','[{"text":""},{"text":" ● Casting Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"0.5s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false}]','[{"text":" ● Action Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Damage","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},HideFlags:4,Unbreakable:1b,element:6,spell_id:2,droppable:-1,abilityTool:3} 1




execute unless score @s a.bull.roar.cd matches 1.. run item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Brutal Roar (Area Debuff Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Casting Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"2.5s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Ability Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"20s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false}]','[{"text":" ● Action Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Magic","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ➵ Inflict negative effect on enimies","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"  ➵ Reduce Att. Damage by 1 stage","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"  ➵ Reduce Speed by 1 stage","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":"  ➵ Reduce for ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"5s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Minotaur Warlord releases a primal roar"}','{"text":"that strikes fear into the hearts of his enemies."}','{"text":"Enemies within the roar\'s radius have their "}','{"text":"attack power and movement speed temporarily reduced,"}','{"text":"allowing the Minotaur Warlord and his allies"}','{"text":"to gain the upper hand."}']},HideFlags:4,Unbreakable:1b,CustomModelData:340007,element:6,spell_id:3,droppable:-1,abilityTool:4} 1
execute if score @s a.bull.roar.cd matches 1.. run item replace entity @s hotbar.7 with barrier{display:{Name:'{"text":"Brutal Roar (Area Debuff Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Casting Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"2.5s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Ability Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"20s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false}]','[{"text":" ● Action Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Magic","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" ➵ Inflict negative effect on enimies","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"  ➵ Reduce Att. Damage by 1 stage","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"  ➵ Reduce Speed by 1 stage","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":"  ➵ Reduce for ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"5s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},HideFlags:4,Unbreakable:1b,element:6,spell_id:3,droppable:-1,abilityTool:4} 1








#item replace entity @s hotbar.8 with diamond{display:{Name:'{"text":"Minotaur Morph","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Character Info:","color":"white","italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":" ● Class: ","color":"white","italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Tank ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/ ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Damage","color":"red"}]','{"text":" ● Reduce incoming damage by 20%","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":""},{"text":" ● Reduce walking speed by 45%","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},droppable:-1,HideFlags:7,abilityTool:6} 1

#################
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:400001}
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:400002}



##################


#item replace entity @s weapon.mainhand from entity @p weapon.mainhand
#item replace entity @s weapon.offhand from entity @p weapon.offhand
item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s twoAnimRandom matches 1 run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:400003}
execute if score @s twoAnimRandom matches 2 run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:400004}
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run scoreboard players add @s animateSysTime 3
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run scoreboard players operation @s animateSysTime %= .36 numValue
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=armor_stand] animate matches 18 run execute if score @s actionID matches 3 run function core:2dlogic/morph/bull_morph/state_3

execute if score @s globalSoundRandom matches 1..2 run execute if score @s twoAnimRandom matches 2 run execute if score @s[type=armor_stand] animate matches 16 run execute if score @s actionID matches 3 run playsound minecraft:game.se.ground_smash_1 block @a ~ ~ ~ 1 1
execute if score @s globalSoundRandom matches 3.. run execute if score @s twoAnimRandom matches 2 run execute if score @s[type=armor_stand] animate matches 16 run execute if score @s actionID matches 3 run playsound minecraft:game.se.ground_smash_2 block @a ~ ~ ~ 1 1
execute if score @s animate matches 14 run execute if score @s actionID matches 3 run effect give @s slowness 1 7 true


execute if score @s[type=armor_stand] animate matches 0 run execute if score @s shieldOn matches 2.. run effect give @s slowness 1 8 true
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s shieldOn matches 2.. run effect give @s minecraft:jump_boost 1 128
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s shieldOn matches 1 run effect clear @s slowness
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s shieldOn matches 1.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:400005}
#execute if score @s shieldOn matches 1 run scoreboard players operation @s animateSysTime = @s shieldOn
#execute if score @s shieldOn matches 1..6 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime

#execute if score @s shieldOn matches 1.. run scoreboard players operation @s animateSysTime %= .12 numValue
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s shieldOn matches 6.. run scoreboard players set @s animateSysTime 8388695
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s shieldOn matches 1..5 run scoreboard players operation @s animateSysTime -= @s shieldOn
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s shieldOn matches 1.. run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime

execute if score @s shieldOn matches 6.. run scoreboard players set @s reduceDMG 200


execute unless score @s a.bull.push.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run function core:2dlogic/morph/bull_morph/ability4
execute if score @s animate matches 40..110 run execute if score @s actionID matches 4 run function core:2dlogic/morph/bull_morph/state_4




execute unless score @s a.bull.roar.cd matches 1.. run execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 5 run function core:2dlogic/morph/bull_morph/ability5
execute unless score @s a.bull.roar.cd matches 1.. run execute if score @s animate matches 59 run execute if score @s actionID matches 5 run scoreboard players set @s[type=armor_stand] a.bull.roar.cd 400

## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s armor.head with minecraft:potion{CustomModelData:400001}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
