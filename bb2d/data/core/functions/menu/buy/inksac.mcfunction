execute if score @s coins matches ..14 run tellraw @s [{"text":"You do not have enough coins to buy this block.","color":"red"}]

execute if score @s coins matches 15.. run scoreboard players add @s item_351 1

execute if score @s coins matches 15.. run scoreboard players remove @s coins 15