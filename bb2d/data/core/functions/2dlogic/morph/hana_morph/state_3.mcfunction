

execute if score @s[type=armor_stand] twoAnimRandom matches 1..2 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] damage 120

execute if score @s[type=armor_stand] twoAnimRandom matches 1..2 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] damage 120

execute if score @s[type=armor_stand] twoAnimRandom matches 1..2 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] damage 120

execute if score @s[type=armor_stand] twoAnimRandom matches 1..2 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] damage 120


execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] motionBack 10

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] motionBack 10

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] motionBack -10

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] motionBack -10

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] motionY 4

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] motionY 4

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] motionY 4

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] motionY 4

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] impactCooldown 11

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] impactCooldown 11

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] impactCooldown 11

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] impactCooldown 11

