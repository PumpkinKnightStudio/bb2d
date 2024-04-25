
scoreboard players set @s dealingDMG 30
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players operation @e[team=right,distance=0..2.1,sort=nearest] damagerID = @s[scores={devast.spin.cd=..1}] playerID

execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players operation @e[team=left,distance=0..2.1,sort=nearest] damagerID = @s[scores={devast.spin.cd=..1}] playerID

execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players operation @e[team=right,distance=0..2.1,sort=nearest] damage += @s[scores={devast.spin.cd=..1}] dealingDMG

execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players operation @e[team=left,distance=0..2.1,sort=nearest] damage += @s[scores={devast.spin.cd=..1}] dealingDMG

execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,limit=1] attackFromDir 3

execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,limit=1] attackFromDir 3

execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,scores={devast.spin.cd=..1,lookingDir=1}] motionBack 4

execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,scores={devast.spin.cd=..1,lookingDir=1}] motionBack 4

execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,scores={devast.spin.cd=..1,lookingDir=2}] motionBack -4

execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,scores={devast.spin.cd=..1,lookingDir=2}] motionBack -4

execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,scores={devast.spin.cd=..1}] motionY 1

execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,scores={devast.spin.cd=..1}] motionY 1

execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=right,distance=0..2.1,sort=nearest,scores={devast.spin.cd=..1}] impactCooldown 15

execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=left,distance=0..2.1,sort=nearest,scores={devast.spin.cd=..1}] impactCooldown 15

#execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=right,distance=0..2.1] crowdControlF 1

#execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=left,distance=0..2.1] crowdControlF 1

execute as @s[team=left] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=right,distance=0..2.1] devast.spin.cd 10

execute as @s[team=right] at @s run execute positioned ~ ~ ~ run scoreboard players set @e[team=left,distance=0..2.1] devast.spin.cd 10

#playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.3 0.3

effect give @s slowness 1 1 true
scoreboard players set @s chr.abi3.cd 120