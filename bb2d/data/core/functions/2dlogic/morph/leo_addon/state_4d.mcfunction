

execute as @s[tag=left] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=right,distance=0..2,sort=nearest,limit=1] damagerID = @s damagerID

execute as @s[tag=right] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=left,distance=0..2,sort=nearest,limit=1] damagerID = @s damagerID

execute as @s[tag=left] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=right,distance=0..2,sort=nearest,limit=1,scores={leo.beam.cd=0}] damage = @s dealingDMG

execute as @s[tag=right] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=left,distance=0..2,sort=nearest,limit=1,scores={leo.beam.cd=0}] damage = @s dealingDMG



execute as @s[tag=left] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2] leo.beam.cd 10
execute as @s[tag=right] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2] leo.beam.cd 10

execute as @s[tag=left] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2] impactCooldown 20

execute as @s[tag=right] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2] impactCooldown 20
