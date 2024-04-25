execute if score @s coins matches ..19 run tellraw @s [{"text":"You do not have enough coins to buy this block.","color":"red"}]

execute if score @s coins matches 20.. run scoreboard players add @s block_17 8

execute if score @s coins matches 20.. run scoreboard players remove @s coins 20