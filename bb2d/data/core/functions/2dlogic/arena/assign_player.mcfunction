execute as @s[type=player] at @s run tp @s -112 31 -234
execute as @s[type=player] at @s run function core:setup/make_self
execute as @s[type=player] at @s if score @s activePets matches 1 run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["no_petID","petModel"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:10101}}],CustomName:'{"text":"Spirit of Speed","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute as @s[type=player] at @s if score @s activePets matches 2 run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["no_petID","petModel"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:10102}}],CustomName:'{"text":"Spirit of Strength","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}



execute as @s[type=player] at @s run scoreboard players operation @e[type=armor_stand,tag=no_petID] petsID = @s playerID
tag @e[type=armor_stand,tag=no_petID] remove no_petID
execute as @s[type=player] at @s run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" profile is now completed.","color":"green"}]
execute as @s[type=player] at @s run tp @s -113 31 -238
tag @s add inGame


scoreboard players remove .playerAmount gameDatabase 1