execute as @s[scores={lookingDir=1}] at @s run execute positioned ~ ~1 ~-1 run particle sweep_attack ~ ~ ~ 0 0 0 1 1 force

execute as @s[scores={lookingDir=2}] at @s run execute positioned ~ ~1 ~1 run particle sweep_attack ~ ~ ~ 0 0 0 1 1 force

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=right,distance=0..0.5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~ ~-1 run scoreboard players operation @e[team=left,distance=0..0.5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players operation @e[team=right,distance=0..0.5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~ ~1 run scoreboard players operation @e[team=left,distance=0..0.5,sort=nearest,limit=1] damagerID = @s playerID