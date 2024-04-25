execute if score @s coins matches ..9 run tellraw @s [{"text":"You do not have enough coins to buy this block.","color":"red"}]

execute if score @s coins matches 10.. run scoreboard players add @s block_30 1

execute if score @s coins matches 10.. run scoreboard players remove @s coins 10