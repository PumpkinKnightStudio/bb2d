
## PATCH BLOCK DATA NOT UPDATING
execute as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run scoreboard players operation @s[type=block_display] block = @p block


execute if score @s block matches 1 if score @s yLoc matches 1.. run setblock -161 ~ ~ minecraft:stone
execute if score @s block matches 17 if score @s yLoc matches 1.. run setblock -161 ~ ~ minecraft:oak_log

execute if score @s[tag=left] block matches 46 run summon tnt -161 ~ ~ {Glowing:1b,fuse:200,Tags:["left","tnt","nodmgerID"]}
execute if score @s[tag=right] block matches 46 run summon tnt -161 ~ ~ {Glowing:1b,fuse:200,Tags:["right","tnt","nodmgerID"]}

execute as @s at @s run scoreboard players operation @e[type=tnt,tag=nodmgerID,limit=1,sort=nearest] damagerID = @s playerID
execute as @s at @s run scoreboard players set @e[type=tnt,tag=nodmgerID,limit=1,sort=nearest] damagerID2 -46
execute as @s at @s run execute as @e[tag=tnt,tag=nodmgerID,sort=nearest,limit=1,scores={damagerID=1..}] run tag @s remove nodmgerID

execute if score @s block matches 30 run setblock -161 ~ ~ minecraft:cobweb
#setblock -162 ~ ~ minecraft:light_gray_stained_glass

execute if score @s[tag=left] block matches 70 run summon armor_stand -161 ~-1.355 ~ {Team:"left",NoGravity:1b,Silent:1b,Invulnerable:0b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["landmine","nodmgerID"],ArmorItems:[{},{},{},{id:"minecraft:stone_pressure_plate",Count:1b}]}

execute if score @s[tag=right] block matches 70 run summon armor_stand -161 ~-1.355 ~ {Team:"right",NoGravity:1b,Silent:1b,Invulnerable:0b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["landmine","nodmgerID"],ArmorItems:[{},{},{},{id:"minecraft:stone_pressure_plate",Count:1b}]}

execute as @s at @s run scoreboard players operation @e[type=armor_stand,tag=landmine,tag=nodmgerID,limit=1,sort=nearest] damagerID = @s playerID
execute as @s at @s run scoreboard players set @e[type=armor_stand,tag=landmine,tag=nodmgerID,limit=1,sort=nearest] damagerID2 -70
execute as @s at @s run execute as @e[type=armor_stand,tag=landmine,tag=nodmgerID,sort=nearest,limit=1,scores={damagerID=1..}] run tag @s remove nodmgerID

execute as @e if score @s playerID = @p playerID run execute as @s[type=player] run scoreboard players set @s localBuilder.successPlace 1