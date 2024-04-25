execute store result score @s building run data get entity @s SelectedItem.tag.builder
execute store result score @s break run data get entity @s SelectedItem.tag.break

execute unless predicate core:spawn_left run execute unless predicate core:spawn_right run execute if score @s building matches 1 run scoreboard players set @s buildStandby 1
execute unless predicate core:spawn_left run execute unless predicate core:spawn_right run execute if score @s breaking matches 1 run scoreboard players set @s buildStandby 1

execute if predicate core:spawn_left run scoreboard players set @s building 0
execute if predicate core:spawn_left run scoreboard players set @s breaking 0

execute if predicate core:spawn_right run scoreboard players set @s building 0
execute if predicate core:spawn_right run scoreboard players set @s breaking 0


execute unless score @s building matches 1 run scoreboard players set @s buildStandby 0

execute if score @s building matches 0 run scoreboard players set @s buildingSwitch 0

execute if score @s buildingSwitch matches 1 run function core:2dlogic/builder/impose

## UPDATE SWITCH TO SHULKER
execute unless score @s buildStandby matches 1 run execute unless score @s buildStandby_mem = @s buildStandby run execute as @s at @s as @e[type=#core:playerid_link_shulker] if score @s playerID = @p playerID run execute as @s run scoreboard players operation @s[type=block_display] buildingSwitch = @p buildingSwitch

scoreboard players operation @s buildStandby_mem = @s buildStandby

#execute as @s at @s as @e[type=#core:playerid_link_shulker] if score @s playerID = @p playerID run execute as @s run 

## BUILD TAGGER



tag @e[type=block_display,tag=unclaimed,scores={playerID=1..}] remove unclaimed



## BOX OUTLINE ##################
execute if score @s buildingSwitch matches 2 run execute at @s run function core:2dlogic/builder/outline_activator

#################################

execute as @e[type=minecraft:block_display,tag=buildingbox] at @s run execute unless block ~ ~ ~ air run data merge entity @s {Glowing:0b}

execute as @e[type=minecraft:block_display,tag=buildingbox] at @s run execute if block ~ ~ ~ air run data merge entity @s {Glowing:1b}