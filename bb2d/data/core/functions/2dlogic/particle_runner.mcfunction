scoreboard players add @s[scores={particleRun=1..}] particleRun 1
scoreboard players set @s[scores={particleRun=9..}] particleRun -1
execute if score @s particleRun matches 1.. run execute if score @s particleID matches 1 run execute at @s run execute positioned ~-8 ~1 ~ run function core:particle/particle_rescue/animate