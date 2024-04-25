
scoreboard players set @s dealingDMG 110
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

execute as @s[team=left] at @s run execute positioned ~ ~-1 ~ run scoreboard players operation @e[team=right,distance=0..2.5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=right] at @s run execute positioned ~ ~-1 ~ run scoreboard players operation @e[team=left,distance=0..2.5,sort=nearest,limit=1] damagerID = @s playerID

execute as @s[team=left] at @s run execute positioned ~ ~-1 ~ run scoreboard players operation @e[team=right,distance=0..2.5,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=right] at @s run execute positioned ~ ~-1 ~ run scoreboard players operation @e[team=left,distance=0..2.5,sort=nearest,limit=1] damage += @s dealingDMG

execute as @s[team=left] at @s run execute positioned ~ ~-1 ~ run scoreboard players operation @e[team=right,distance=0..2.5,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=right] at @s run execute positioned ~ ~-1 ~ run scoreboard players operation @e[team=left,distance=0..2.5,sort=nearest,limit=1] attackFromDir = @s lookingDir

execute as @s[team=left,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~ run scoreboard players set @e[team=right,distance=0..2.5,sort=nearest,limit=1] motionBack 1

execute as @s[team=right,scores={lookingDir=1}] at @s run execute positioned ~ ~-1 ~ run scoreboard players set @e[team=left,distance=0..2.5,sort=nearest,limit=1] motionBack 1

execute as @s[team=left,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~ run scoreboard players set @e[team=right,distance=0..2.5,sort=nearest,limit=1] motionBack -1

execute as @s[team=right,scores={lookingDir=2}] at @s run execute positioned ~ ~-1 ~ run scoreboard players set @e[team=left,distance=0..2.5,sort=nearest,limit=1] motionBack -1

execute as @s[team=left] at @s run execute positioned ~ ~-1 ~ run scoreboard players set @e[team=right,distance=0..2.5,sort=nearest,limit=1] motionY 1000

execute as @s[team=right] at @s run execute positioned ~ ~-1 ~ run scoreboard players set @e[team=left,distance=0..2.5,sort=nearest,limit=1] motionY 1000


execute as @s[team=left] at @s run execute positioned ~ ~-1 ~ run scoreboard players set @e[team=right,distance=0..2.5,sort=nearest,limit=1] impactCooldown 20

execute as @s[team=right] at @s run execute positioned ~ ~-1 ~ run scoreboard players set @e[team=left,distance=0..2.5,sort=nearest,limit=1] impactCooldown 20

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.3 0.3
execute if score @s damage matches 0 run execute if score @s voiceID matches 1 run playsound minecraft:leo.atk1 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 2 run playsound minecraft:leo.atk2 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 3 run playsound minecraft:leo.atk3 voice @a ~ ~ ~ 1 1

execute as @s at @s run execute positioned -161 ~ ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:0b,Tags:["special_effect","spawn_leo.gravity","unset","req_delete"],DisabledSlots:4144959,Rotation:[180F,0F],ArmorItems:[{},{},{},{id:"minecraft:brown_dye",Count:1b,tag:{CustomModelData:40004}}]}
scoreboard players set @e[type=armor_stand,tag=spawn_leo.gravity,tag=unset,limit=1] req_delete 17
tag @e[tag=unset,tag=spawn_leo.gravity] remove unset