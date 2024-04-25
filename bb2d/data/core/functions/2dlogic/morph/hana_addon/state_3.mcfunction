scoreboard players set @s dealingDMG 55
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=right,distance=0..1.6,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players operation @e[team=left,distance=0..1.6,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..1.6,sort=nearest,limit=1] motionBack 2

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..1.6,sort=nearest,limit=1] motionBack 2

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..1.6,sort=nearest,limit=1] motionBack -2

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..1.6,sort=nearest,limit=1] motionBack -2

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..1.6,sort=nearest,limit=1] motionY 0

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..1.6,sort=nearest,limit=1] motionY 0

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..1.6,sort=nearest,limit=1] motionY 0

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..1.6,sort=nearest,limit=1] motionY 0

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..1.6,sort=nearest,limit=1] impactCooldown 2

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..1.6,sort=nearest,limit=1] impactCooldown 2

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..1.6,sort=nearest,limit=1] impactCooldown 2

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..1.6,sort=nearest,limit=1] impactCooldown 2

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.3 1.2

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run function core:spells/physical/sword/block_remover

