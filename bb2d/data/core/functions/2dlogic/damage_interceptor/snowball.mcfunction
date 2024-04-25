



# PROJECTILE
execute as @s[type=snowball] at @s run execute unless block ~-1 ~ ~ air run kill @s

execute as @s[type=snowball,tag=right] at @s positioned ~-0.4 ~ ~ if entity @e[tag=left,distance=0..1.8,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/projectile_hit

execute as @s[type=snowball,tag=left] at @s positioned ~-0.4 ~ ~ if entity @e[tag=right,distance=0..1.8,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/projectile_hit


#execute as @e[type=arrow,nbt={inGround:1b}] run tag @s remove left
#execute as @e[type=arrow,nbt={inGround:1b}] run tag @s remove right