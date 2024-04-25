scoreboard players set @s[type=armor_stand] a.bull.push.cd 600


execute as @s[scores={lookingDir=1}] at @s run scoreboard players set #entity_mot_z nexus.value -200
execute as @s[scores={lookingDir=2}] at @s run scoreboard players set #entity_mot_z nexus.value 200

effect give @s slowness 1 8 true

execute if score @s[type=armor_stand] twoAnimRandom matches 1..2 run execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] damage 120

execute if score @s[type=armor_stand] twoAnimRandom matches 1..2 run execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] damage 120

execute if score @s[type=armor_stand] twoAnimRandom matches 1..2 run execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] damage 120

execute if score @s[type=armor_stand] twoAnimRandom matches 1..2 run execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] damage 120


execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] motionBack 15

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] motionBack 15

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] motionBack -15

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] motionBack -15

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] motionY 25

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] motionY 25

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] motionY 25

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] motionY 25

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] impactCooldown 14

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~-1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] impactCooldown 14

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=right,distance=0..2,sort=nearest,limit=1] impactCooldown 14

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~1 run scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] impactCooldown 14

scoreboard players set #entity_mot_y nexus.value 0
execute as @s at @s run function nexus:player/launch/apply/vector