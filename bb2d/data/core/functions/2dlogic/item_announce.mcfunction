execute if score @s holdingBlock matches 1.. run execute if score @s actionBarIS matches 0..5 run scoreboard players set @s actionBarIS 5

execute if score @s holdingItemID matches 1.. run execute if score @s actionBarIS matches 0..5 run scoreboard players set @s actionBarIS 5


execute if score @s actionBarIS matches 1..5 run execute if score @s holdingBlock matches 1 run title @s actionbar ["",{"text":"Stone Block: ","color":"white"},{"score":{"name":"@s","objective":"block_1"}},{"text":" left.","color":"white"}]
execute if score @s actionBarIS matches 1..5 run execute if score @s holdingBlock matches 30 run title @s actionbar ["",{"text":"Cobweb Block: ","color":"white"},{"score":{"name":"@s","objective":"block_30"}},{"text":" left.","color":"white"}]

execute if score @s actionBarIS matches 1..5 run execute if score @s holdingBlock matches 17 run title @s actionbar ["",{"text":"Oak Log Block: ","color":"white"},{"score":{"name":"@s","objective":"block_17"}},{"text":" left.","color":"white"}]

execute if score @s actionBarIS matches 1..5 run execute if score @s holdingBlock matches 46 run title @s actionbar ["",{"text":"TNT: ","color":"white"},{"score":{"name":"@s","objective":"block_46"}},{"text":" left.","color":"white"}]

execute if score @s actionBarIS matches 1..5 run execute if score @s holdingBlock matches 70 run title @s actionbar ["",{"text":"Landmine: ","color":"white"},{"score":{"name":"@s","objective":"block_70"}},{"text":" left.","color":"white"}]

execute if score @s actionBarIS matches 1..5 run execute if score @s holdingItemID matches 351 run title @s actionbar ["",{"text":"Ink Sac: ","color":"white"},{"score":{"name":"@s","objective":"item_351"}},{"text":" left.","color":"white"}]

execute if score @s actionBarIS matches 1..5 run scoreboard players remove @s actionBarIS 1

execute if score @s holdingBlock matches 0 run execute if score @s holdingItemID matches 0 run execute if score @s actionBarIS matches 1..5 run title @s actionbar {"text":""}
execute if score @s holdingBlock matches 0 run execute if score @s actionBarIS matches 1..5 run scoreboard players set @s actionBarIS 0