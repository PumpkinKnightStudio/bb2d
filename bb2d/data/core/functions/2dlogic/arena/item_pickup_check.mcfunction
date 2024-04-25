execute as @s at @s run execute store result score @s pickupID run data get entity @e[type=item,limit=1,sort=nearest,distance=..0.5,tag=!pickingup] Item.tag.block

execute as @s[scores={pickupID=0}] at @s run execute store result score @s pickupID run data get entity @e[type=item,limit=1,sort=nearest,distance=..0.5,tag=!pickingup] Item.tag.item


execute as @s run execute if score @s pickupID matches 1 run scoreboard players add @s block_1 1
execute as @s run execute if score @s pickupID matches 30 run scoreboard players add @s block_30 1
execute as @s run execute if score @s pickupID matches 46 run scoreboard players add @s block_46 1
execute as @s run execute if score @s pickupID matches 70 run scoreboard players add @s block_70 1
execute as @s run execute if score @s pickupID matches 351 run scoreboard players add @s item_351 1

## SERIES 2
execute as @s run execute if score @s pickupID matches 17 run scoreboard players add @s block_17 1


execute as @s at @s run tag @e[tag=!pickingupIns,type=item,sort=nearest,distance=..1.5,limit=1] add pickingup

execute as @e[type=item,nbt={Item:{tag:{droppable:1}}},limit=1,distance=1] run tag @s remove pickingup
execute as @e[type=item,nbt={Item:{tag:{droppable:1}}},limit=1,distance=1] run data merge entity @s {PickupDelay:0}
#execute as @e[type=item,nbt={Item:{tag:{droppable:0}}}] run tag @s remove pickingup


execute as @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:cooked_chicken"}]}] run scoreboard players add @s health 40
execute as @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:cooked_chicken"}]}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1
execute as @s run execute if entity @s[nbt={Inventory:[{id:"minecraft:cooked_chicken"}]}] run clear @s cooked_chicken 1


kill @e[tag=pickingup,distance=..1,sort=nearest,limit=1]