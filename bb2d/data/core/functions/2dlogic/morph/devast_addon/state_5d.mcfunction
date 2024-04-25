

execute as @s[tag=left] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=right,distance=0..3.1,sort=nearest] damage 120

execute as @s[tag=right] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=left,distance=0..3.1,sort=nearest] damage 120

execute as @s[tag=left] at @s run execute positioned ~10 ~1 ~ run scoreboard players operation @e[team=right,distance=0..3.1,sort=nearest] damagerID = @s damagerID

execute as @s[tag=right] at @s run execute positioned ~10 ~1 ~ run scoreboard players operation @e[team=left,distance=0..3.1,sort=nearest] damagerID = @s damagerID

execute as @s[team=left] at @s run execute positioned ~10 ~1 ~ run scoreboard players set @e[team=right,distance=0..3.1,sort=nearest,limit=1] attackFromDir 4

execute as @s[team=right] at @s run execute positioned ~10 ~1 ~ run scoreboard players set @e[team=left,distance=0..3.1,sort=nearest,limit=1] attackFromDir 4

execute as @s[tag=left] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=right,distance=0..3.1,sort=nearest,scores={lookingDir=1}] motionBack 1

execute as @s[tag=right] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=left,distance=0..3.1,sort=nearest,scores={lookingDir=1}] motionBack 1

execute as @s[tag=left] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=right,distance=0..3.1,sort=nearest,scores={lookingDir=2}] motionBack -1

execute as @s[tag=right] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=left,distance=0..3.1,sort=nearest,scores={lookingDir=2}] motionBack -1

execute as @s[tag=left] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=right,distance=0..3.1,sort=nearest] motionY 700

execute as @s[tag=right] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=left,distance=0..3.1,sort=nearest] motionY 700

execute as @s[tag=left] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=right,distance=0..3.1,sort=nearest] impactCooldown 15

execute as @s[tag=right] at @s run execute positioned ~2 ~1 ~ run scoreboard players set @e[team=left,distance=0..3.1,sort=nearest] impactCooldown 15


execute at @s run playsound minecraft:devast.soulfirehit1 player @a ~ ~ ~ 0.5 1


