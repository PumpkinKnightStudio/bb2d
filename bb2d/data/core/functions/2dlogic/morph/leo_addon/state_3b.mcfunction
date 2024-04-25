
execute if score @s lookingDir matches 1 run scoreboard players set #entity_mot_z nexus.value -2000
execute if score @s lookingDir matches 2 run scoreboard players set #entity_mot_z nexus.value 2000
execute as @s at @s run function nexus:player/launch/apply/vector