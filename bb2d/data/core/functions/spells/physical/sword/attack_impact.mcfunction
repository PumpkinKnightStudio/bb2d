## TEAM LEFT


execute if score @s[team=left] lookingDir matches 1 run function core:2dlogic/damage_interceptor/sword_impact

execute if score @s[team=left] lookingDir matches 2 run function core:2dlogic/damage_interceptor/sword_impact

## DAMAGE REGISTER



execute if score @s[team=left] lookingDir matches 1 run execute positioned ~ ~0.1 ~-0.6 run scoreboard players operation @e[team=right,distance=0..1.2,sort=nearest,limit=1] damage = @p[team=left] swordDam

execute if score @s[team=left] lookingDir matches 2 run execute positioned ~ ~0.1 ~0.6 run scoreboard players operation @e[team=right,distance=0..1.2,sort=nearest,limit=1] damage = @p[team=left] swordDam

execute if score @s[team=left] lookingDir matches 1 run execute positioned ~ ~0.1 ~-0.6 run scoreboard players operation @e[team=right,distance=0..1.2,sort=nearest,limit=1] motionBack = @p[team=left] motionApplier

execute if score @s[team=left] lookingDir matches 2 run execute positioned ~ ~0.1 ~0.6 run scoreboard players operation @e[team=right,distance=0..1.2,sort=nearest,limit=1] motionBack = @p[team=left] motionApplier

execute if score @s[team=left] lookingDir matches 1 run execute positioned ~ ~0.1 ~-0.6 run scoreboard players operation @e[team=right,distance=..1.3,sort=nearest,limit=1] impactCooldown = @p[team=left] stunApplier

execute if score @s[team=left] lookingDir matches 2 run execute positioned ~ ~0.1 ~0.6 run scoreboard players operation @e[team=right,distance=..1.3,sort=nearest,limit=1] impactCooldown = @p[team=left] stunApplier

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~0.1 ~-0.6 run scoreboard players operation @e[team=right,distance=0..1.2,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~0.1 ~-0.6 run scoreboard players operation @e[team=left,distance=0..1.2,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~0.1 ~0.6 run scoreboard players operation @e[team=right,distance=0..1.2,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~0.1 ~0.6 run scoreboard players operation @e[team=left,distance=0..1.2,sort=nearest,limit=1] attackFromDir = @s lookingDir

## TEAM RIGHT

execute if score @s[team=right] lookingDir matches 1 run function core:2dlogic/damage_interceptor/sword_impact


execute if score @s[team=right] lookingDir matches 2 run function core:2dlogic/damage_interceptor/sword_impact

execute if score @s[team=right] lookingDir matches 1 run execute positioned ~ ~0.1 ~-0.6 run scoreboard players operation @e[team=left,distance=0..1.2,sort=nearest,limit=1] damage = @p[team=right] swordDam


execute if score @s[team=right] lookingDir matches 2 run execute positioned ~ ~0.1 ~0.6 run scoreboard players operation @e[team=left,distance=0..1.2,sort=nearest,limit=1] damage = @p[team=right] swordDam


execute if score @s[team=right] lookingDir matches 1 run execute positioned ~ ~0.1 ~-0.6 run scoreboard players operation @e[team=left,distance=0..1.2,sort=nearest,limit=1] motionBack = @p[team=right] motionApplier


execute if score @s[team=right] lookingDir matches 2 run execute positioned ~ ~0.1 ~0.6 run scoreboard players operation @e[team=left,distance=0..1.2,sort=nearest,limit=1] motionBack = @p[team=right] motionApplier

execute if score @s[team=right] lookingDir matches 1 run execute positioned ~ ~0.1 ~-0.6 run scoreboard players operation @e[team=left,distance=..1.3,sort=nearest,limit=1] impactCooldown = @p[team=right] stunApplier


execute if score @s[team=right] lookingDir matches 2 run execute positioned ~ ~0.1 ~0.6 run scoreboard players operation @e[team=left,distance=..1.3,sort=nearest,limit=1] impactCooldown = @p[team=right] stunApplier


## BLOCK REMOVER

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run function core:spells/physical/sword/block_remover
