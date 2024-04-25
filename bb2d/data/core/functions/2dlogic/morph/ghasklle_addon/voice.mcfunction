execute if score @s damage matches 0 run execute if score @s voiceID matches 1 run playsound minecraft:rana.atk1 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 2 run playsound minecraft:rana.atk2 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 0 run execute if score @s voiceID matches 3 run playsound minecraft:rana.atk3 voice @a ~ ~ ~ 1 1

execute if score @s damage matches 1.. run execute if score @s voiceID matches 1 run playsound minecraft:rana.hurt1 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 1.. run execute if score @s voiceID matches 2 run playsound minecraft:rana.hurt2 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 1.. run execute if score @s voiceID matches 3 run playsound minecraft:rana.hurt3 voice @a ~ ~ ~ 1 1