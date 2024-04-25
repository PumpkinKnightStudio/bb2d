execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~1 ~-1 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["orc.axe","left","axe_nosetup","lookingLeft"],DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:600008}}]}

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~1 ~-1 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["orc.axe","right","axe_nosetup","lookingLeft"],DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:600008}}]}

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~1 ~1 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["orc.axe","left","axe_nosetup","lookingRight"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:600008}}]}

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~1 ~1 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["orc.axe","right","axe_nosetup","lookingRight"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomModelData:600008}}]}

execute as @s at @s as @e[type=minecraft:armor_stand,tag=axe_nosetup,sort=nearest,limit=1] run scoreboard players operation @s orc.axeID = @p playerID
execute as @e[tag=axe_nosetup] at @s run function core:2dlogic/morph/orc_addon/state_4s
