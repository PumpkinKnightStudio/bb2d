


execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1.355 ~-0.5 run summon armor_stand ~ ~ ~ {Team:"left",NoGravity:1b,Silent:1b,Invulnerable:0b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["landmine","nodmgerID"],ArmorItems:[{},{},{},{id:"minecraft:stone_pressure_plate",Count:1b}]}

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1.355 ~-0.5 run summon armor_stand ~ ~ ~ {Team:"right",NoGravity:1b,Silent:1b,Invulnerable:0b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["landmine","nodmgerID"],ArmorItems:[{},{},{},{id:"minecraft:stone_pressure_plate",Count:1b}]}

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1.355 ~0.5 run summon armor_stand ~ ~ ~ {Team:"left",NoGravity:1b,Silent:1b,Invulnerable:0b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["landmine","nodmgerID"],ArmorItems:[{},{},{},{id:"minecraft:stone_pressure_plate",Count:1b}]}

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1.355 ~0.5 run summon armor_stand ~ ~ ~ {Team:"right",NoGravity:1b,Silent:1b,Invulnerable:0b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["landmine","nodmgerID"],ArmorItems:[{},{},{},{id:"minecraft:stone_pressure_plate",Count:1b}]}

execute as @s at @s run scoreboard players operation @e[type=armor_stand,tag=landmine,tag=nodmgerID,limit=1,sort=nearest] damagerID = @s playerID
execute as @s at @s run scoreboard players set @e[type=armor_stand,tag=landmine,tag=nodmgerID,limit=1,sort=nearest] damagerID2 -70
execute as @s at @s run execute as @e[type=armor_stand,tag=landmine,tag=nodmgerID,sort=nearest,limit=1,scores={damagerID=1..}] run tag @s remove nodmgerID