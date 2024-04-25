scoreboard players set @s dealingDMG 650
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~9 ~ ~-1 run scoreboard players operation @a[team=right,distance=0..5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~9 ~ ~-1 run scoreboard players operation @a[team=left,distance=0..5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~9 ~ ~1 run scoreboard players operation @a[team=right,distance=0..5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~9 ~ ~1 run scoreboard players operation @a[team=left,distance=0..5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=right,distance=0..3,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=left,distance=0..3,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=right,distance=0..3,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=left,distance=0..3,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=right,distance=0..3,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=left,distance=0..3,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=right,distance=0..3,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=left,distance=0..3,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..3,sort=nearest,limit=1] motionBack 80

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..3,sort=nearest,limit=1] motionBack 80

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..3,sort=nearest,limit=1] motionBack -80

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..3,sort=nearest,limit=1] motionBack -80

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..3,sort=nearest,limit=1] motionY 100

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..3,sort=nearest,limit=1] motionY 100

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..3,sort=nearest,limit=1] motionY 100

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..3,sort=nearest,limit=1] motionY 100

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..3,sort=nearest,limit=1] impactCooldown 45

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..3,sort=nearest,limit=1] impactCooldown 45

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..3,sort=nearest,limit=1] impactCooldown 45

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..3,sort=nearest,limit=1] impactCooldown 45

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..3,sort=nearest,limit=1] duiMemory 1

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..3,sort=nearest,limit=1] duiMemory 1

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..3,sort=nearest,limit=1] duiMemory 1

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..3,sort=nearest,limit=1] duiMemory 1