effect give @s minecraft:jump_boost 1 2 true
scoreboard players add @s[type=player] speedEF 1
scoreboard players add @s[type=player] speedEFT 1

scoreboard players operation @p ww.ult.active = @s[type=minecraft:armor_stand] ww.ult.active
scoreboard players remove @s[scores={ww.ult.active =1..}] ww.ult.active 1


#effect give @s minecraft:speed 1 1 true

item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Attack (Punch)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"0.6s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Attack Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 0.3s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 6","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Physical","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},HideFlags:4,Unbreakable:1b,element:3,spell_id:1,droppable:-1,abilityTool:1} 1
item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Attack (Swipe Up)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"0.4s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Attack Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 1.25s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" + Flit II (Self)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":"  + 1 target within 1 meter","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 6","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Physical","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},HideFlags:4,Unbreakable:1b,element:3,spell_id:2,droppable:-1,abilityTool:2} 1
item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Moonlit Spin (Spin Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 65","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Physical","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":"The Werewolf initiates a rapid spin, "}','{"text":"claws extended, creating a deadly cyclone"}','{"text":"of slashing attacks. Enemies caught in "}','{"text":"the spin are dealt continuous damage as"}','{"text":"the werewolf whirls through the battlefield."}','{"text":"The Moonlit Spin is not only a powerful"}','{"text":"offensive maneuver but also serves as a"}','{"text":"defensive move, deflecting projectiles and"}','{"text":"disrupting enemy formations."}']},HideFlags:4,Unbreakable:1b,element:3,spell_id:3,droppable:-1,abilityTool:3} 1
execute unless score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Lycanthropic Frenzy (Ultimate Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" ● Increase Atk. Damage: +15%","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" ● Increase Speed: +10%","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Duration: 15 sec.","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"  ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"The Werewolf taps into the full extent of"}','{"text":"his lycanthropic power. During his ultimate,"}','{"text":"he gains increased damage, attack speed,"}','{"text":"and resilience. His Lunar Swipe, Beastly Punch,"}','{"text":"and Moonlit Spin abilities are enhanced,"}','{"text":"dealing even more devastating effects."}','{"text":"The Werewolf becomes an unstoppable force,"}','{"text":"tearing through enemies with unmatched ferocity."}']},HideFlags:4,Unbreakable:1b,element:3,spell_id:5,droppable:-1,abilityTool:5} 1
execute if score @s chr.ult.cd matches 1.. run item replace entity @s hotbar.8 with barrier{display:{Name:'{"text":"Lycanthropic Frenzy (Ultimate Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" ● Increase Atk. Damage: +15%","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" ● Increase Speed: +10%","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"Duration: 15 sec.","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"  ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"The Werewolf taps into the full extent of"}','{"text":"his lycanthropic power. During his ultimate,"}','{"text":"he gains increased damage, attack speed,"}','{"text":"and resilience. His Lunar Swipe, Beastly Punch,"}','{"text":"and Moonlit Spin abilities are enhanced,"}','{"text":"dealing even more devastating effects."}','{"text":"The Werewolf becomes an unstoppable force,"}','{"text":"tearing through enemies with unmatched ferocity."}']},HideFlags:4,Unbreakable:1b,element:3,spell_id:5,droppable:-1,abilityTool:5} 1


execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:100001}
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute unless score @s ww.ult.active matches 1.. run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:100002}
execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s ww.ult.active matches 1.. run execute if score @s walking matches 1 run item replace entity @s armor.head with minecraft:potion{CustomModelData:100007}

# FALL ANIMATION #

execute unless score @s fallAnimCooldown matches 2.. run execute if block ~ ~-1 ~ air run execute unless block ~ ~-3 ~ air run scoreboard players set @s fallAnimCooldown 18
execute if score @s fallAnimCooldown matches 1 run execute unless block ~ ~-1 ~ air run scoreboard players set @s fallAnimCooldown 0
execute if score @s fallAnimCooldown matches 2.. run scoreboard players remove @s fallAnimCooldown 1

## LANDING ANIMATION
#execute if score @s animate matches 0 run execute if score @s fallAnimCooldown matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:100005}

#execute if score @s animate matches 0 run execute if score @s fallAnimCooldown matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
#execute if score @s animate matches 0 run execute if score @s fallAnimCooldown matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
#execute if score @s animate matches 0 run execute if score @s fallAnimCooldown matches 3 run scoreboard players remove @s animateSysTime 1
#execute if score @s animate matches 0 run execute if score @s fallAnimCooldown matches 3 run scoreboard players operation @s animateSysTime %= .18 numValue
#execute if score @s animate matches 0 run execute if score @s fallAnimCooldown matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12


##################



#item replace entity @s weapon.mainhand from entity @p weapon.mainhand
#item replace entity @s weapon.offhand from entity @p weapon.offhand
item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s animate matches 1 run execute if score @s ww_state matches 3 run item replace entity @s armor.head with minecraft:potion{CustomModelData:100003}
execute if score @s animate matches 1 run execute if score @s ww_state matches 3 run effect give @s slowness 1 3 true
execute if score @s animate matches 1 run execute if score @s ww_state matches 3 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s ww_state matches 3 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s ww_state matches 3 run scoreboard players add @s animateSysTime 4
execute if score @s animate matches 1 run execute if score @s ww_state matches 3 run scoreboard players operation @s animateSysTime %= .18 numValue
execute if score @s animate matches 1 run execute if score @s ww_state matches 3 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 6 run execute if score @s ww_state matches 3 run function core:2dlogic/morph/werewolf_addon/state_3
#execute if score @s animate matches 11 run execute if score @s ww_state matches 3 run effect clear @s minecraft:levitation

execute if score @s animate matches 1 run execute if score @s ww_state matches 4 run item replace entity @s armor.head with minecraft:potion{CustomModelData:100004}
execute if score @s animate matches 1 run execute if score @s ww_state matches 4 run effect give @s slowness 1 3 true
execute if score @s animate matches 1 run execute if score @s ww_state matches 4 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s ww_state matches 4 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s ww_state matches 4 run scoreboard players add @s animateSysTime 5
execute if score @s animate matches 1 run execute if score @s ww_state matches 4 run scoreboard players operation @s animateSysTime %= .18 numValue
execute if score @s animate matches 1 run execute if score @s ww_state matches 4 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 3 run execute if score @s ww_state matches 4 run function core:2dlogic/morph/werewolf_addon/state_4
#execute if score @s animate matches 9 run execute if score @s ww_state matches 4 run effect clear @s minecraft:levitation

execute if score @s animate matches 1 run execute if score @s ww_state matches 5 run item replace entity @s armor.head with minecraft:potion{CustomModelData:100005}
execute if score @s animate matches 1 run execute if score @s ww_state matches 5 run effect give @s slowness 3 10 true
execute if score @s animate matches 1 run execute if score @s ww_state matches 5 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s ww_state matches 5 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s ww_state matches 5 run scoreboard players add @s animateSysTime 5
execute if score @s animate matches 1 run execute if score @s ww_state matches 5 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s ww_state matches 5 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 30 run execute if score @s ww_state matches 5 run function core:2dlogic/morph/werewolf_addon/state_5

# ID - POWERUP
execute if score @s animate matches 1 run execute if score @s ww_state matches 6 run item replace entity @s armor.head with minecraft:potion{CustomModelData:100006}
execute if score @s animate matches 1 run execute if score @s ww_state matches 6 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s animate matches 1 run execute if score @s ww_state matches 6 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s animate matches 1 run execute if score @s ww_state matches 6 run scoreboard players add @s animateSysTime 4
execute if score @s animate matches 1 run execute if score @s ww_state matches 6 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s animate matches 1 run execute if score @s ww_state matches 6 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s animate matches 56 run execute if score @s ww_state matches 6 run function core:2dlogic/morph/werewolf_addon/state_7

## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s armor.head with minecraft:potion{CustomModelData:100001}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0


## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1

item replace entity @s[type=player] armor.head with minecraft:air