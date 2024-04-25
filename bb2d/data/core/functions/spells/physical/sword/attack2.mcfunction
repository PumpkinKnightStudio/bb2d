## TEAM LEFT

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run function core:2dlogic/damage_interceptor/sword_impact

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run function core:2dlogic/damage_interceptor/sword_impact

## DAMAGE REGISTER

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run execute positioned ~ ~0.1 ~-0.3 run scoreboard players set @e[team=right,distance=0..1.3,sort=nearest,limit=1] damage 70

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run execute positioned ~ ~0.1 ~0.3 run scoreboard players set @e[team=right,distance=0..1.3,sort=nearest,limit=1] damage 70

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run execute positioned ~ ~0.1 ~-0.3 run scoreboard players set @e[team=right,distance=0..1.3,sort=nearest,limit=1] motionBack 4

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run execute positioned ~ ~0.1 ~0.3 run scoreboard players set @e[team=right,distance=0..1.3,sort=nearest,limit=1] motionBack -4


## TEAM RIGHT

execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run function core:2dlogic/damage_interceptor/sword_impact


execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run function core:2dlogic/damage_interceptor/sword_impact

execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run execute positioned ~ ~0.1 ~-0.3 run scoreboard players set @e[team=left,distance=0..1.3,sort=nearest,limit=1] damage 70


execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run execute positioned ~ ~0.1 ~0.3 run scoreboard players set @e[team=left,distance=0..1.3,sort=nearest,limit=1] damage 70


execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run execute positioned ~ ~0.1 ~-0.3 run scoreboard players set @e[team=left,distance=0..1.3,sort=nearest,limit=1] motionBack 4


execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run execute positioned ~ ~0.1 ~0.3 run scoreboard players set @e[team=left,distance=0..1.3,sort=nearest,limit=1] motionBack -4

## BLOCK BREAK
execute as @s[scores={lookingDir=1}] at @s as @e if score @s playerID = @p playerID run execute as @s at @s run execute if block ~ ~ ~-1 minecraft:cobweb run tellraw @s ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"Sword need to be fully charged to destroy cobweb.","color":"yellow"},{"text":"","color":"green"}]

execute as @s[scores={lookingDir=2}] at @s as @e if score @s playerID = @p playerID run execute as @s at @s run execute if block ~ ~ ~1 minecraft:cobweb run tellraw @s ["",{"text":"Notice: ","bold":true,"color":"red"},{"text":"Sword need to be fully charged to destroy cobweb.","color":"yellow"},{"text":"","color":"green"}]