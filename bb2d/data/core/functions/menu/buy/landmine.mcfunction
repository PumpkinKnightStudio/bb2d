execute if score @s coins matches ..39 run tellraw @s [{"text":"You do not have enough coins to buy this block.","color":"red"}]

execute if score @s coins matches 40.. run scoreboard players add @s block_70 1

execute if score @s coins matches 40.. run scoreboard players remove @s coins 40