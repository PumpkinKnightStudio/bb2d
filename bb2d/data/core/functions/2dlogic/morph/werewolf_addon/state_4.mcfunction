scoreboard players set @s dealingDMG 40
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=right,distance=0..2,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=left,distance=0..2,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players operation @e[team=right,distance=0..2,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players operation @e[team=left,distance=0..2,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=right,distance=0..2,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=left,distance=0..2,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=right,distance=0..2,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=left,distance=0..2,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players set @a[team=right,distance=0..2,sort=nearest,limit=1] motionBack 1

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players set @a[team=left,distance=0..2,sort=nearest,limit=1] motionBack 1

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players set @a[team=right,distance=0..2,sort=nearest,limit=1] motionBack -1

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players set @a[team=left,distance=0..2,sort=nearest,limit=1] motionBack -1

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players set @a[team=right,distance=0..2,sort=nearest,limit=1] motionY 1000

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players set @a[team=left,distance=0..2,sort=nearest,limit=1] motionY 1000

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players set @a[team=right,distance=0..2,sort=nearest,limit=1] motionY 1000

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players set @a[team=left,distance=0..2,sort=nearest,limit=1] motionY 1000

