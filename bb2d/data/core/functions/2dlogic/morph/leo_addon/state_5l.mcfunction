scoreboard players operation @e[team=right,distance=0..1.1,sort=nearest,limit=1] damagerID = @s damageID
scoreboard players set @e[team=right,distance=0..1.1,sort=nearest,limit=1] damage 100


scoreboard players set @e[team=right,distance=0..3.1,sort=nearest,limit=1] attackFromDir 4

scoreboard players set @e[team=right,distance=0..3.1,sort=nearest,scores={lookingDir=1}] motionBack -4


scoreboard players set @e[team=right,distance=0..3.1,sort=nearest,scores={lookingDir=2}] motionBack 4



scoreboard players set @e[team=right,distance=0..3.1,sort=nearest] motionY 700

scoreboard players set @e[team=right,distance=0..3.1,sort=nearest] impactCooldown 15

execute at @s run particle explosion_emitter ~-1 ~ ~ 1 1 1 1 0 force @a

#execute positioned ~-9 ~ ~ run execute as @e[tag=spawn_leo.rift,tag=left,distance=..2] run scoreboard players set @s forceExplode 1

kill @s