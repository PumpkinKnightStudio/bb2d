execute as @e[type=item,nbt={Item:{tag:{droppable:-1}}}] run kill @s

scoreboard players add @e[tag=droppedItem] pickupTime 1

execute as @e[type=armor_stand] at @s unless entity @e[type=armor_stand,distance=0.1..1.5] run tp @e[type=item,scores={pickupTime=100..,playerNearby=..1},distance=..1,sort=nearest] ~9.0 ~ ~

execute as @e[type=item,nbt={Item:{tag:{droppable:0}}}] run data merge entity @s {PickupDelay:0}



execute as @e[type=item,nbt={Item:{tag:{droppable:0}}}] run tag @s add pickingup
execute as @e[type=item,nbt={Item:{tag:{droppable:1}}}] run tag @s add pickingupIns
execute as @e[tag=!pickingup] run data merge entity @s {PickupDelay:32767}
execute as @e[tag=pickingupIns] run data merge entity @s {PickupDelay:0}


execute as @a at @s unless entity @a[distance=0.1..1] run function core:2dlogic/arena/item_pickup_check




#execute as @e[type=item,nbt={Item:{tag:{droppable:1}}}] run data merge entity @s {PickupDelay:0}

scoreboard players set @s pickupID 0

execute as @e[tag=droppedItem] at @s run execute store result score @s playerNearby run execute if entity @e[type=minecraft:armor_stand,distance=..1.5]

execute as @e[type=item,tag=left] at @s run execute if entity @e[type=armor_stand,team=right,distance=..1.5] run scoreboard players set @s playerNearby 2
execute as @e[type=item,tag=right] at @s run execute if entity @e[type=armor_stand,team=left,distance=..1.5] run scoreboard players set @s playerNearby 2


execute as @e[type=item,scores={playerNearby=2..}] run team join blockedItem @s 
execute as @e[type=item,scores={playerNearby=2..}] run data merge entity @s {Glowing:1b}
execute as @e[type=item,team=blockedItem] run data merge entity @s {PickupDelay:10}
execute as @e[type=item,scores={playerNearby=..1}] run team leave @s
execute as @e[type=item,scores={playerNearby=..1}] run data merge entity @s {Glowing:0b}
