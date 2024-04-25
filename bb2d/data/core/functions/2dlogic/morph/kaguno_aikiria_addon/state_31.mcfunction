scoreboard players set #entity_mot_y nexus.value 300
execute if score @s lookingDir matches 1 run scoreboard players set #entity_mot_z nexus.value 2000
execute if score @s lookingDir matches 2 run scoreboard players set #entity_mot_z nexus.value -2000
scoreboard players set @s dodgeTimer 15
execute as @s at @s run function nexus:player/launch/apply/vector
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.1