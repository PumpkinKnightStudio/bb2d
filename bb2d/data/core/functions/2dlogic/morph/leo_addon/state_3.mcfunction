
scoreboard players set @s dealingDMG 110
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players operation @e[team=right,distance=0..2.1,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players operation @e[team=left,distance=0..2.1,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players operation @e[team=right,distance=0..2.1,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players operation @e[team=left,distance=0..2.1,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players operation @e[team=right,distance=0..2.1,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players operation @e[team=left,distance=0..2.1,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players operation @e[team=right,distance=0..2.1,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players operation @e[team=left,distance=0..2.1,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players operation @e[team=right,distance=0..2.1,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players operation @e[team=left,distance=0..2.1,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players operation @e[team=right,distance=0..2.1,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players operation @e[team=left,distance=0..2.1,sort=nearest,limit=1] attackFromDir = @s lookingDir



execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,limit=1] motionBack 4

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,limit=1] motionBack 4

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,limit=1] motionBack -4

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,limit=1] motionBack -4

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,limit=1] motionY 1

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,limit=1] motionY 1

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,limit=1] motionY 1

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,limit=1] motionY 1

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,limit=1] impactCooldown 15

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1.5 run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,limit=1] impactCooldown 15

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,limit=1] impactCooldown 15

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1.5 run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,limit=1] impactCooldown 15

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.3 0.3
execute if score @s damage matches 0 run execute if score @s voiceID matches 1 run playsound minecraft:leo.atk1 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 2 run playsound minecraft:leo.atk2 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 3 run playsound minecraft:leo.atk3 voice @a ~ ~ ~ 1 1

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run function core:spells/physical/sword/block_remover
execute if score @s leo.rift.maker matches 1.. run function core:2dlogic/morph/leo_addon/state_5