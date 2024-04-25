

execute as @s run execute if entity @e[type=item,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{builder:1}}}] run scoreboard players set @s droppedBlock 1

execute as @s run execute if entity @e[type=item,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{asItem:1}}}] run scoreboard players set @s droppedBlock 1

execute as @s run execute if entity @e[type=item,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:shield"}}] run scoreboard players set @s droppedBlock 1


execute if score @s droppedID matches 0 run execute store result score @s[scores={droppedBlock=1}] droppedID run data get entity @e[type=item,limit=1,sort=nearest,distance=..2,tag=!droppedItem] Item.tag.block

execute if score @s droppedID matches 0 run execute store result score @s[scores={droppedBlock=1}] droppedID run data get entity @e[type=item,limit=1,sort=nearest,distance=..2,tag=!droppedItem] Item.tag.item

execute if score @s droppedID matches 1.. run execute as @s run function core:2dlogic/arena/item_negate


tag @e[type=item,limit=1,sort=nearest,distance=..2,tag=] add droppedItem
execute as @e[type=item,nbt={Item:{tag:{droppable:0}}}] run tag @s remove droppedItem

#### TELEPORT ITEM #####
execute as @e[tag=droppedItem,tag=!tped] at @s run data merge entity @s {Motion:[0.0,0.0,0.0],Item:{}}

execute as @e[tag=droppedItem,tag=!tped] at @s align x positioned ~.5 ~ ~ run tp @s -161 ~ ~
execute as @e[tag=droppedItem] at @s run tag @s add tped

########################




scoreboard players set @s droppedBlock 0
scoreboard players set @s droppedID 0

scoreboard players set @s dropPressed 0
scoreboard players set @s droppedShield 0

