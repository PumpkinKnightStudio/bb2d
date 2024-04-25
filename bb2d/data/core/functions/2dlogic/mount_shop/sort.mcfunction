execute as @s run execute store result score @s buy.mountID.1 run clear @s paper{buy.mountID:1} 0
execute as @s run execute store result score @s buy.mountID.2 run clear @s paper{buy.mountID:2} 0

execute as @s run execute unless score @s ulk.ride.glacial matches 1 run execute if score @s buy.mountID.1 matches 1 run execute if score @s gold matches ..59 run tellraw @s {"text":"You do not have enough gold to buy this item.","color":"red"}
execute as @s run execute unless score @s ulk.ride.glacial matches 1 run execute as @s run execute if score @s buy.mountID.1 matches 1 run execute if score @s gold matches 60.. run scoreboard players remove @s gold 60
execute as @s run execute if score @s buy.mountID.1 matches 1 run execute if score @s ulk.ride.glacial matches 1 run tellraw @s {"text":"You have already own this mount.","color":"red"}
execute as @s run execute unless score @s ulk.ride.glacial matches 1 run execute if score @s buy.mountID.1 matches 1 run execute if score @s gold matches 60.. run tellraw @s {"text":"Purchase successful.","color":"green"}
execute as @s run execute unless score @s ulk.ride.glacial matches 1 run execute if score @s buy.mountID.1 matches 1 run execute if score @s gold matches 60.. run scoreboard players set @s ulk.ride.glacial 1


execute as @s run execute unless score @s ulk.ride.aether matches 1 run execute if score @s buy.mountID.2 matches 1 run execute if score @s gold matches ..59 run tellraw @s {"text":"You do not have enough gold to buy this item.","color":"red"}
execute as @s run execute unless score @s ulk.ride.aether matches 1 run execute as @s run execute if score @s buy.mountID.2 matches 1 run execute if score @s gold matches 60.. run scoreboard players remove @s gold 60
execute as @s run execute if score @s buy.mountID.2 matches 1 run execute if score @s ulk.ride.aether matches 1 run tellraw @s {"text":"You have already own this mount.","color":"red"}
execute as @s run execute unless score @s ulk.ride.aether matches 1 run execute if score @s buy.mountID.2 matches 1 run execute if score @s gold matches 60.. run tellraw @s {"text":"Purchase successful.","color":"green"}
execute as @s run execute unless score @s ulk.ride.aether matches 1 run execute if score @s buy.mountID.2 matches 1 run execute if score @s gold matches 60.. run scoreboard players set @s ulk.ride.aether 1

clear @s paper{buy.mountID:1}
clear @s paper{buy.mountID:2}

execute as @s run function core:menu/page/page0