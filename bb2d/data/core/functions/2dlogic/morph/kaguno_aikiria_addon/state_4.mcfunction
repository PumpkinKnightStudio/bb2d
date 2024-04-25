execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-0.525 ~-2.8 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["leo.bolt","left","bolt.unset","lookingLeft","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:brown_dye",Count:1b,tag:{CustomModelData:40001}}]}

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-0.525 ~-2.8 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["leo.bolt","right","bolt.unset","lookingLeft","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:brown_dye",Count:1b,tag:{CustomModelData:40001}}]}

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-0.525 ~2.8 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["leo.bolt","left","bolt.unset","lookingRight","req_delete"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:brown_dye",Count:1b,tag:{CustomModelData:40001}}]}

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-0.525 ~2.8 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["leo.bolt","right","bolt.unset","lookingRight","req_delete"],DisabledSlots:4144959,Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:brown_dye",Count:1b,tag:{CustomModelData:40001}}]}

execute as @s at @s as @e[type=minecraft:armor_stand,tag=bolt.unset,sort=nearest,limit=1] run scoreboard players operation @s dealingDMG = @p leo.hold.charge
execute as @s at @s as @e[type=minecraft:armor_stand,tag=bolt.unset,sort=nearest,limit=1] run scoreboard players operation @s damagerID = @p playerID
execute as @s at @s as @e[type=minecraft:armor_stand,tag=bolt.unset,sort=nearest,limit=1] run scoreboard players operation @s attackFromDir = @p lookingDir
execute as @e[tag=bolt.unset] at @s run function core:2dlogic/morph/leo_addon/state_4a

playsound minecraft:leo.release voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 1 run playsound minecraft:leo.power1 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 2 run playsound minecraft:leo.power2 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 3 run playsound minecraft:leo.power3 voice @a ~ ~ ~ 1 1

#scoreboard players set @s leo.absorb.physical 0
scoreboard players set @s leo.hold.charge 0
