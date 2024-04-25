#Launch
scoreboard players set .default rana.jumpCal 60
scoreboard players set .neg rana.jumpCal -1

scoreboard players operation @s rana.jumpCal = @s rana.jumpScore
scoreboard players operation @s rana.jumpCal *= .default rana.jumpCal

scoreboard players operation #entity_mot_y nexus.value = @s rana.jumpCal
scoreboard players operation #entity_mot_z nexus.value = @s rana.jumpCal

execute if score @s lookingDir matches 1 run scoreboard players operation #entity_mot_z nexus.value *= .neg rana.jumpCal

function nexus:player/launch/apply/vector

scoreboard players set @s rana.jumpScore 0
scoreboard players set @s rana.landToggle 5
