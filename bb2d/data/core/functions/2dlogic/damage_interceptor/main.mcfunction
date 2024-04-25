## DIRECTION DETECT BETA ##

execute as @s[type=arrow,tag=left,tag=dir_left,nbt={inGround:0b}] at @s positioned ~0.4 ~ ~ run execute as @e[tag=right,distance=0..5] at @s as @e if score @s playerID = @p playerID run execute as @s[type=armor_stand,tag=right] as @e if score @s playerID = @p playerID run execute as @s[type=player,team=right] at @s run scoreboard players set @s motionBack -4

execute as @s[type=arrow,tag=left,tag=dir_right,nbt={inGround:0b}] at @s positioned ~0.4 ~ ~ run execute as @e[tag=right,distance=0..5] at @s as @e if score @s playerID = @p playerID run execute as @s[type=armor_stand,tag=right] as @e if score @s playerID = @p playerID run execute as @s[type=player,team=right] at @s run scoreboard players set @s motionBack 4

execute as @s[type=arrow,tag=right,tag=dir_left,nbt={inGround:0b}] at @s positioned ~0.4 ~ ~ run execute as @e[tag=left,distance=0..5] at @s as @e if score @s playerID = @p playerID run execute as @s[type=armor_stand,tag=left] as @e if score @s playerID = @p playerID run execute as @s[type=player,team=left] at @s run scoreboard players set @s motionBack -4

execute as @s[type=arrow,tag=right,tag=dir_right,nbt={inGround:0b}] at @s positioned ~0.4 ~ ~ run execute as @e[tag=left,distance=0..5] at @s as @e if score @s playerID = @p playerID run execute as @s[type=armor_stand,tag=left] as @e if score @s playerID = @p playerID run execute as @s[type=player,team=left] at @s run scoreboard players set @s motionBack 4

# directionApplier

execute as @s[type=arrow,tag=left,tag=dir_left,nbt={inGround:0b}] at @s positioned ~9 ~ ~ run execute as @a[team=right,distance=0..5] at @s run scoreboard players set @s attackFromDir 2

execute as @s[type=arrow,tag=left,tag=dir_right,nbt={inGround:0b}] at @s positioned ~9 ~ ~ run execute as @a[team=right,distance=0..5] at @s run scoreboard players set @s attackFromDir 1

execute as @s[type=arrow,tag=right,tag=dir_left,nbt={inGround:0b}] at @s positioned ~9 ~ ~ run execute as @a[team=left,distance=0..5] at @s run scoreboard players set @s attackFromDir 2

execute as @s[type=arrow,tag=right,tag=dir_right,nbt={inGround:0b}] at @s positioned ~9 ~ ~ run execute as @a[team=left,distance=0..5] at @s run scoreboard players set @s attackFromDir 1



#head box

execute as @s[type=arrow,tag=right,nbt={inGround:0b}] at @s positioned ~0.4 ~-1.8 ~ run execute as @e[tag=left,distance=0..0.93,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/headshot_right


execute as @s[type=arrow,tag=right,nbt={inGround:0b}] at @s positioned ~0.4 ~-1.8 ~ if entity @e[tag=left,distance=0..0.9,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/arrow_hit



#BODY BOX

execute as @s[type=arrow,tag=right,nbt={inGround:0b}] at @s positioned ~0.4 ~-0.5 ~ run execute as @e[tag=left,distance=0..0.91,type=armor_stand] at @s run execute store result score @s damage run data get entity @e[type=arrow,sort=nearest,tag=right,limit=1,nbt={inGround:0b}] damage 10.0

execute as @s[type=arrow,tag=right,nbt={inGround:0b}] at @s positioned ~0.4 ~-0.5 ~ if entity @e[tag=left,distance=0..0.9,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/arrow_hit


#feet box

execute as @s[type=arrow,tag=right,nbt={inGround:0b}] at @s positioned ~0.4 ~ ~ run execute as @e[tag=left,distance=0..0.85,type=armor_stand] at @s run execute store result score @s damage run data get entity @e[type=arrow,sort=nearest,tag=right,limit=1,nbt={inGround:0b}] damage 5.0


execute as @s[type=arrow,tag=right,nbt={inGround:0b}] at @s positioned ~0.4 ~ ~ if entity @e[tag=left,distance=0..0.8,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/arrow_hit





#head box

execute as @s[type=arrow,tag=left,nbt={inGround:0b}] at @s positioned ~0.4 ~-1.8 ~ run execute as @e[tag=right,distance=0..0.93,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/headshot_left



execute as @s[type=arrow,tag=left,nbt={inGround:0b}] at @s positioned ~0.4 ~-1.8 ~ if entity @e[tag=right,distance=0..0.9,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/arrow_hit



#BODY BOX

execute as @s[type=arrow,tag=left,nbt={inGround:0b}] at @s positioned ~0.4 ~-0.5 ~ run execute as @e[tag=right,distance=0..0.91,type=armor_stand] at @s run execute store result score @s damage run data get entity @e[type=arrow,sort=nearest,tag=left,limit=1,nbt={inGround:0b}] damage 10.0

execute as @s[type=arrow,tag=left,nbt={inGround:0b}] at @s positioned ~0.4 ~-0.5 ~ if entity @e[tag=right,distance=0..0.9,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/arrow_hit

#feetbox



execute as @s[type=arrow,tag=left,nbt={inGround:0b}] at @s positioned ~0.4 ~ ~ run execute as @e[tag=right,distance=0..0.85,type=armor_stand] at @s run execute store result score @s damage run data get entity @e[type=arrow,sort=nearest,tag=left,limit=1,nbt={inGround:0b}] damage 5.0

execute as @s[type=arrow,tag=left,nbt={inGround:0b}] at @s positioned ~0.4 ~ ~ if entity @e[tag=right,distance=0..0.8,type=armor_stand] at @s run function core:2dlogic/damage_interceptor/arrow_hit
