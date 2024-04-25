scoreboard players set @s dealingDMG 45
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1.01 run scoreboard players operation @e[team=right,distance=0..1.94,sort=nearest,limit=1] damagerID = @s playerID

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1.01 run scoreboard players operation @e[team=left,distance=0..1.94,sort=nearest,limit=1] damagerID = @s playerID

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1.01 run scoreboard players operation @e[team=right,distance=0..1.94,sort=nearest,limit=1] damagerID = @s playerID

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1.01 run scoreboard players operation @e[team=left,distance=0..1.94,sort=nearest,limit=1] damagerID = @s playerID

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.01 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.01 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.01 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.01 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.01 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.01 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.01 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.01 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute if score @s[type=armor_stand] threeAnimRandom matches 2..3 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1.28 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] damagerID = @s playerID

execute if score @s[type=armor_stand] threeAnimRandom matches 2..3 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1.28 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] damagerID = @s playerID

execute if score @s[type=armor_stand] threeAnimRandom matches 2..3 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1.28 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] damagerID = @s playerID

execute if score @s[type=armor_stand] threeAnimRandom matches 2..3 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1.28 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] damagerID = @s playerID

execute if score @s[type=armor_stand] threeAnimRandom matches 2..3 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute if score @s[type=armor_stand] threeAnimRandom matches 2..3 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute if score @s[type=armor_stand] threeAnimRandom matches 2..3 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players operation @e[team=right,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG

execute if score @s[type=armor_stand] threeAnimRandom matches 2..3 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players operation @e[team=left,distance=0..1.4,sort=nearest,limit=1] damage += @s dealingDMG






execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionBack 2

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionBack 2

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionBack -2

execute if score @s[type=armor_stand] threeAnimRandom matches 1 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionBack -2

execute if score @s[type=armor_stand] threeAnimRandom matches 2 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=right,distance=0..1.7,sort=nearest,limit=1] motionBack 3

execute if score @s[type=armor_stand] threeAnimRandom matches 2 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=left,distance=0..1.7,sort=nearest,limit=1] motionBack 3

execute if score @s[type=armor_stand] threeAnimRandom matches 2 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=right,distance=0..1.7,sort=nearest,limit=1] motionBack -3

execute if score @s[type=armor_stand] threeAnimRandom matches 2 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=left,distance=0..1.7,sort=nearest,limit=1] motionBack -3

execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionBack 1

execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionBack 1

execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionBack -1

execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionBack -1


execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionY 0

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionY 0

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] motionY 0

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] motionY 0

execute unless score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] impactCooldown 4

execute unless score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] impactCooldown 4

execute unless score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] impactCooldown 4

execute unless score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] impactCooldown 4

execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] impactCooldown 7

execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] impactCooldown 7

execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=right,distance=0..1.4,sort=nearest,limit=1] impactCooldown 7

execute if score @s[type=armor_stand] threeAnimRandom matches 3 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.28 run scoreboard players set @e[team=left,distance=0..1.4,sort=nearest,limit=1] impactCooldown 7

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.3 0.8