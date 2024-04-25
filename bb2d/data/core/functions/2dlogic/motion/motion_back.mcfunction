
# PATCH MOTION LOOKING DIR - NEW NEXUS PATCH
#scoreboard players set @s[scores={motionCooldown=0}] motionCooldown 20

#MOTION ACTIVE

#scoreboard players operation @s[scores={inMotion=0}] calting_motionB = @s motionBack
#execute as @s unless score @s motionBack matches 0 run scoreboard players set @s inMotion 1


#recalibrate


#execute as @s at @s if score @s calting_motionB matches ..-2 run execute if block ~ ~ ~0.2 air run tp @s ~ ~ ~0.2
#execute as @s at @s if entity @s[scores={calting_motionB=..-1}] run scoreboard players add @s calting_motionB 1


#execute as @s at @s if score @s calting_motionB matches 2.. run execute if block ~ ~ ~-0.2 air run tp @s ~ ~ ~-0.2
#execute if entity @s[scores={calting_motionB=1..}] run scoreboard players remove @s calting_motionB 1



## PATCH
#execute as @s if score @s calting_motionB matches 0 run scoreboard players set @s motionBack 0
#execute as @s if score @s calting_motionB matches 0 run scoreboard players set @s inMotion 2


#execute as @a[scores={playerID=1..,inMotion=2}] at @s as @e if score @s playerID = @p playerID run #execute as @s run execute unless score @s motionBack matches 0 run scoreboard players operation @s[type=minecraft:armor_stand] motionBack = @p calting_motionB

#execute as @s if score @s inMotion matches 2 run scoreboard players set @s inMotion 0

scoreboard players operation @s motionBack *= .negative motionBack
scoreboard players operation @s motionBack *= .motionTransfer motionApplier
scoreboard players operation #entity_mot_y nexus.value = @s motionBack
execute unless score @s motionY matches 0 run scoreboard players operation #entity_mot_y nexus.value = @s motionY
scoreboard players operation @s motionBack *= .motionTransfer motionApplier
scoreboard players operation #entity_mot_z nexus.value = @s motionBack

scoreboard players operation @s healthMotion = @s health
#scoreboard players operation @s healthMotion /= .divider healthMotion

scoreboard players operation @s healthReverser = @s healthMotion

execute if score @s health matches -800.. run execute if score @s motionBack matches 1.. run scoreboard players operation @s healthReverser *= .negative healthReverser

execute if score @s health matches -800.. run execute if score @s motionBack matches ..-1 run scoreboard players operation #entity_mot_y nexus.value -= @s healthMotion
execute if score @s health matches -800.. run execute if score @s motionBack matches ..-1 run scoreboard players operation #entity_mot_z nexus.value += @s healthMotion

execute if score @s health matches -800.. run execute if score @s motionBack matches 1.. run scoreboard players operation #entity_mot_y nexus.value += @s healthReverser 
execute if score @s health matches -800.. run execute if score @s motionBack matches 1.. run scoreboard players operation #entity_mot_z nexus.value += @s healthReverser 

execute if score @s health matches -800.. run execute as @s at @s run function nexus:player/launch/apply/vector



#########

execute if score @s health matches ..-801 run scoreboard players operation @s healthMotion *= .3 numValue
execute if score @s health matches ..-801 run scoreboard players operation @s healthReverser *= .5 numValue
execute if score @s health matches ..-801 run scoreboard players operation #entity_mot_y nexus.value *= .3 numValue
execute if score @s health matches ..-801 run execute as @s at @s run function temp:entity/ball/spawn/main

execute if score @s health matches ..-801 run execute if score @s motionBack matches ..1 run execute as @s[scores={playerID=1..}] at @s as @e if score @s motionID = @p motionID run execute as @s run scoreboard players operation @s[tag=nexus.entity] nexus.mot_z = @p healthMotion

execute if score @s health matches ..-801 run execute if score @s motionBack matches 1.. run scoreboard players operation @s healthReverser *= .negative healthReverser

execute if score @s health matches ..-801 run execute if score @s motionBack matches 1.. run execute as @s[scores={playerID=1..}] at @s as @e if score @s motionID = @p motionID run execute as @s run scoreboard players operation @s[tag=nexus.entity] nexus.mot_z = @p healthReverser


##########


execute if score @s crowdControlF matches 1.. run execute as @s at @s run function temp:entity/ball/spawn/main

execute if score @s crowdControlF matches 1.. run execute if score @s leftoverMotion matches ..1 run execute as @s[scores={playerID=1..}] at @s as @e if score @s motionID = @p motionID run execute as @s run scoreboard players operation @s[tag=nexus.entity] nexus.mot_z = @p leftoverMotion
#execute if score @s crowdControlF matches 1.. run execute if score @s leftoverMotion matches 1.. run scoreboard players operation @s leftoverMotion *= .negative healthReverser

execute if score @s crowdControlF matches 1.. run execute if score @s leftoverMotion matches 1.. run execute as @s[scores={playerID=1..}] at @s as @e if score @s motionID = @p motionID run execute as @s run scoreboard players operation @s[tag=nexus.entity] nexus.mot_z = @p leftoverMotion


execute as @s[scores={playerID=1..}] at @s as @e if score @s motionID = @p motionID run execute as @s run scoreboard players operation @s[tag=nexus.entity] nexus.mot_y = @p[scores={crowdControlF=0}] healthMotion
execute as @s[scores={playerID=1..}] at @s as @e if score @s motionID = @p motionID run execute as @s run scoreboard players operation @s[tag=nexus.entity] nexus.mot_y = @p[scores={crowdControlF=1..}] leftoverMotion


scoreboard players set @s crowdControlF 0

scoreboard players set @s motionBack 0
execute unless score @s motionY matches 0 run scoreboard players set @s motionY 0

scoreboard players set @s inMotion 0
