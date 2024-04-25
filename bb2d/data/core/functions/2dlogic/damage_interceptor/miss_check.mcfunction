
execute at @s run execute if score @s dam_recieved matches 1.. run execute if score @s damage matches ..0 run playsound minecraft:entity.player.attack.nodamage master @a ~-9 ~ ~ 1 1


## ARMOR HIT SOUND

execute at @s run execute if score @s dam_recieved matches 1.. run execute if score @s defenseAtt matches 1.. run execute if score @s damage matches ..0 run playsound minecraft:entity.zombie.attack_iron_door master @a ~-9 ~ ~ 0.5 1.5



#execute at @s run execute if score @s dam_recieved matches 1.. run execute if score @s damage matches ..0 run execute as @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=armor_stand,scores={dam_recieved=1..}] at @s run summon armor_stand ~ ~2.7 ~ {CustomNameVisible:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["temp_message"],CustomName:'{"text":"NO EFFECT!","color":"gray","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false}'}
execute at @s run execute if score @s dodgeTimer matches 1.. run execute if score @s dam_recieved matches 1.. run execute if score @s damage matches ..0 run execute positioned -161 ~ ~ run summon armor_stand ~ ~2.7 ~ {CustomNameVisible:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["temp_message"],CustomName:'{"text":"DODGED!","color":"gray","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false}'}

scoreboard players set @s dam_recieved 0

