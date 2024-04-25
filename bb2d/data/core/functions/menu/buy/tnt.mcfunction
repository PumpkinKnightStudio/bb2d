execute if score @s coins matches ..29 run tellraw @s [{"text":"You do not have enough coins to buy this block.","color":"red"}]

execute if score @s coins matches 30.. run scoreboard players add @s block_46 1

execute if score @s coins matches 30.. run scoreboard players remove @s coins 30