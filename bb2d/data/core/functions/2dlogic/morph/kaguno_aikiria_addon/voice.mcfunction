

execute if score @s damage matches 1.. run execute if score @s voiceID matches 1 run playsound minecraft:leo.hurt1 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 1.. run execute if score @s voiceID matches 2 run playsound minecraft:leo.hurt2 voice @a ~ ~ ~ 1 1
execute if score @s damage matches 1.. run execute if score @s voiceID matches 3 run playsound minecraft:leo.hurt3 voice @a ~ ~ ~ 1 1

execute if score @s leo.hold.charge matches 5..50 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 0.1
execute if score @s leo.hold.charge matches 51..100 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 0.25
execute if score @s leo.hold.charge matches 101..150 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 0.45
execute if score @s leo.hold.charge matches 151..200 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 0.60
execute if score @s leo.hold.charge matches 201..250 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 0.75
execute if score @s leo.hold.charge matches 251..300 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 0.90
execute if score @s leo.hold.charge matches 301..350 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 1.05
execute if score @s leo.hold.charge matches 351..400 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 1.20
execute if score @s leo.hold.charge matches 401..450 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 1.35
execute if score @s leo.hold.charge matches 451..500 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 1.50
execute if score @s leo.hold.charge matches 501..550 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 1.65
execute if score @s leo.hold.charge matches 551..600 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 1.80
execute if score @s leo.hold.charge matches 601..650 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 1.80
execute if score @s leo.hold.charge matches 651.. run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 0.2 2

