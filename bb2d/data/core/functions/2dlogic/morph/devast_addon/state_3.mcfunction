
scoreboard players set @s dealingDMG 120
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionBack 3

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionBack 3

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionBack -3

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionBack -3

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionY 0

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionY 0

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionY 0

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionY 0

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] impactCooldown 15

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.2 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] impactCooldown 15

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] impactCooldown 15

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.2 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] impactCooldown 15

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.3 0.3

effect give @s slowness 1 1 true

