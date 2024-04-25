# Summon ball

execute if entity @s[team=left,scores={motionBack=1..}] run execute align x positioned ~.5 ~ ~ run summon area_effect_cloud ~ ~0.5 ~0.5 {Tags:["left","nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.ticking","nexus.entity.target.spawn","nexus.entity.air_toggle","nexus.entity.push","unclaimed.motion"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["left","nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.target.spawn","unclaimed.motion"],NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b,tag:{CustomModelData:999901}}]}]}

execute if entity @s[team=left,scores={motionBack=..-1}] run execute align x positioned ~.5 ~ ~ run summon area_effect_cloud ~ ~0.5 ~-0.5 {Tags:["left","nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.ticking","nexus.entity.target.spawn","nexus.entity.air_toggle","nexus.entity.push","unclaimed.motion"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["left","nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.target.spawn","unclaimed.motion"],NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b,tag:{CustomModelData:999901}}]}]}


execute if entity @s[team=right,scores={motionBack=1..}] run execute align x positioned ~.5 ~ ~ run summon area_effect_cloud ~ ~0.5 ~0.5 {Tags:["right","nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.ticking","nexus.entity.target.spawn","nexus.entity.air_toggle","nexus.entity.push","unclaimed.motion"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["right","nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.target.spawn","unclaimed.motion"],NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b,tag:{CustomModelData:999901}}]}]}

execute if entity @s[team=right,scores={motionBack=..-1}] run execute align x positioned ~.5 ~ ~ run summon area_effect_cloud ~ ~0.5 ~-0.5 {Tags:["right","nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.ticking","nexus.entity.target.spawn","nexus.entity.air_toggle","nexus.entity.push","unclaimed.motion"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["right","nexus.entity","temp.entity","temp.entity.type.ball","nexus.entity.target.spawn","unclaimed.motion"],NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_concrete",Count:1b,tag:{CustomModelData:999901}}]}]}


#team join right @e[tag=right,tag=nexus.entity]
#team join left @e[tag=left,tag=nexus.entity]

#execute as @s[scores={playerID=1..}] at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=armor_stand] run execute as @e[type=minecraft:armor_stand,tag=unclaimed.motion,sort=nearest] run scoreboard players operation @s motionID = @p playerID

execute as @s[scores={playerID=1..}] at @s as @e run execute as @s[type=minecraft:area_effect_cloud] run execute as @e[type=minecraft:area_effect_cloud,tag=unclaimed.motion,sort=nearest] run scoreboard players operation @s motionID = @p playerID

execute as @s[scores={playerID=1..}] at @s as @e run execute as @s[type=minecraft:armor_stand] run execute as @e[type=minecraft:armor_stand,tag=unclaimed.motion,sort=nearest] run scoreboard players operation @s motionID = @p playerID

tag @e[tag=unclaimed.motion,scores={playerID=1..}] remove unclaimed.motion

 

# Assign IDs

scoreboard players add #global nexus.id 1
scoreboard players operation @e[type=#temp:generic/entity,distance=..4,tag=nexus.entity.target.spawn] nexus.id = #global nexus.id







# Assign scores

execute as @e[type=area_effect_cloud,distance=..4,tag=nexus.entity.target.spawn,limit=1] run function temp:entity/ball/spawn/scores







# Process entities

execute as @e[type=#temp:generic/entity,distance=..4,tag=nexus.entity.target.spawn] run function nexus:entity/process/verify







# Remove target tag

tag @e[type=#temp:generic/entity,distance=..4,tag=temp.entity] remove nexus.entity.target.spawn