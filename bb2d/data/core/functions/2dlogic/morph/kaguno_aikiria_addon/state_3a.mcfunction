scoreboard players add @s leo.da.launchC 1
execute if score @s leo.da.launchC matches 1 run execute unless block ~ ~-0.1 ~ air run scoreboard players set #entity_mot_y nexus.value 900
execute if score @s leo.da.launchC matches 1 run scoreboard players set #entity_mot_z nexus.value 0
execute if score @s leo.da.launchC matches 2 run execute if score @s lookingDir matches 1 run scoreboard players set #entity_mot_z nexus.value -1000
execute if score @s leo.da.launchC matches 2 run execute if score @s lookingDir matches 2 run scoreboard players set #entity_mot_z nexus.value 1000
execute as @s at @s run function nexus:player/launch/apply/vector