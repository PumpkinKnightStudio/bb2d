team join left @s[tag=left]
team join right @s[tag=right]

scoreboard players operation @s[tag=right,tag=noMotion] projectile_aim = @e[team=right,type=armor_stand,sort=nearest,limit=1] projectile_aim

scoreboard players operation @s[tag=left,tag=noMotion] projectile_aim = @e[team=left,type=armor_stand,sort=nearest,limit=1] projectile_aim

execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s projectile_aim

execute if entity @e[team=right,type=armor_stand,sort=nearest,limit=1,scores={lookingDir=1},distance=..2] run scoreboard players operation @s[tag=right,tag=noMotion] projectile_aim *= .negative projectile_aim

execute if entity @e[team=left,type=armor_stand,sort=nearest,limit=1,scores={lookingDir=1},distance=..2] run scoreboard players operation @s[tag=left,tag=noMotion] projectile_aim *= .negative projectile_aim


execute store result entity @s Motion[2] double 0.0142 run scoreboard players get @s projectile_aim



tag @s remove noMotion