## ACTIVE EFFECT


scoreboard players remove @s[scores={guru.active.wisdom=1..}] guru.active.wisdom 1



item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Knowledge Beam (Basic Attack)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Attack Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" ~1s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 3.2","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Damage Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Magic","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Guru projects a focused beam of "}','{"text":"concentrated knowledge at enemies,"}','{"text":"dealing damage. This attack has a"}','{"text":"chance to briefly disorient enemies, "}','{"text":"reducing their accuracy and movement speed."}']},HideFlags:4,Unbreakable:1b,CustomModelData:330001,element:5,spell_id:1,droppable:0} 1

item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Instant Heal (Zone)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":""},{"text":" ● Casting Radius: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"5 meters","color":"yellow"}]','[{"text":""},{"text":" ● Casting Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"0.2s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false}]','[{"text":" ● Restore:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 10 units/sec","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Restore For:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 3s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Action Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Healing","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]']},HideFlags:4,Unbreakable:1b,CustomModelData:330002,element:5,spell_id:2,droppable:-1} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Wisdom\'s Embrace (Ultimate Ability)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":" ● Casting Speed:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" ~1.5s","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":""},{"text":" ● Active Radius: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"5 meters","color":"yellow"}]','[{"text":""},{"text":" ● Ability Cooldown: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"30s","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false}]','[{"text":" ● Restore:","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 1:1 CD","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":" ● Action Type: ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Restoring","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" "}','{"text":"The Guru channels the collective wisdom of ages, "}','{"text":"creating a field of pure knowledge. "}','{"text":"Allies within this field gain increased"}','{"text":"gold rewards for a limited time. "}','{"text":"Additionally, their cooldowns are reduced, "}','{"text":"allowing them to use their abilities more "}','{"text":"frequently and tip the scales of battle "}','{"text":"in their favor. - Voidwatcher"}']},HideFlags:4,Unbreakable:1b,CustomModelData:330005,element:5,spell_id:5,droppable:-1} 1



#################

execute if score @s[type=armor_stand] animate matches 0 run execute if score @s animCooldown matches 0 run execute if score @s walking matches 0 run item replace entity @s armor.head with minecraft:potion{CustomModelData:300001}



##################


#item replace entity @s weapon.mainhand from entity @p weapon.mainhand
#item replace entity @s weapon.offhand from entity @p weapon.offhand
item replace entity @s[type=armor_stand] armor.chest with minecraft:air
item replace entity @s[type=armor_stand] armor.legs with minecraft:air
item replace entity @s[type=armor_stand] armor.feet with minecraft:air

data merge entity @s {Invisible:1b}

execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run execute if score @s magic_cast matches 6.. run item replace entity @s armor.head with minecraft:potion{CustomModelData:300002}
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run execute if score @s magic_cast matches 6.. run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run execute if score @s magic_cast matches 6.. run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run execute if score @s magic_cast matches 6.. run scoreboard players add @s animateSysTime 4
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run execute if score @s magic_cast matches 6.. run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 3 run execute if score @s magic_cast matches 6.. run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s[type=armor_stand] animate matches 9 run execute if score @s actionID matches 3 run function core:2dlogic/morph/tamer_addon/state_3
execute if score @s animate matches 11 run execute if score @s actionID matches 3 run function core:spells/magic/laser/init
execute if score @s animate matches 11 run execute if score @s actionID matches 3 run execute if score @s magic_cast matches 6.. run scoreboard players set @s magic_cast 0



execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run item replace entity @s armor.head with minecraft:potion{CustomModelData:300003}
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run scoreboard players add @s animateSysTime 4
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run scoreboard players operation @s animateSysTime %= .48 numValue
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 4 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
#execute if score @s[type=armor_stand] a
execute if score @s animate matches 1 run execute if score @s actionID matches 4 run function core:2dlogic/morph/guru_addon/state_5


## WISDOM ACTIVATOR

execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run item replace entity @s armor.head with minecraft:potion{CustomModelData:300004}
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s animateSysTime = .gametime arenaTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s animateSysTime %= .24000 animateSysTime
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players add @s animateSysTime 4
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run scoreboard players operation @s animateSysTime %= @s animateMax
execute if score @s[type=armor_stand] animate matches 1 run execute if score @s actionID matches 7 run execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime
execute if score @s[type=armor_stand] animate matches 22 run execute if score @s actionID matches 7 run scoreboard players add @s guru.active.wisdom 600 


## WISDOM PARTICLE & Executor
execute if score @s[type=armor_stand] guru.active.wisdom matches 1.. run scoreboard players operation @s[type=armor_stand] particle.wisdom1 = @s guru.active.wisdom
execute if score @s[type=armor_stand] guru.active.wisdom matches 1.. run scoreboard players operation @s[type=armor_stand] particle.wisdom1 %= .activator particle.wisdom1
execute if score @s[type=armor_stand] particle.wisdom1 matches 0 run execute at @s rotated as @a run function core:particle_generator/aegis
execute if score @s[type=player] guru.active.wisdom matches 1.. run function core:2dlogic/morph/guru_addon/state_3


## ENDING ANIMATION ##
execute if score @s animate matches 1.. run execute if score @s animate < @s animateMax run scoreboard players add @s animate 1
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run item replace entity @s armor.head with minecraft:potion{CustomModelData:300001}
execute if score @s animate matches 1.. run execute unless score @s animate < @s animateMax run scoreboard players set @s animate 0

## ANIM COOLDOWN FORMULA -> time - first frame - other anim cooldown - 2 ##
execute if score @s fallAnimCooldown matches 2.. run scoreboard players set @s animCooldown 12

## ALWAYS RESET ANIMCOOLDOWN ! ##
scoreboard players remove @s[scores={animCooldown=1..}] animCooldown 1
