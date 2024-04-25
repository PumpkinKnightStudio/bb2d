execute if score @s coins matches ..49 run tellraw @s [{"text":"You do not have enough coins to buy this upgrade.","color":"red"}]

execute if score @s coins matches 50.. run scoreboard players set @s armorC_Level 1
execute if score @s coins matches 50.. run execute at @s run playsound minecraft:game.upgraded player @s ~ ~ ~ 0.6 1
execute if score @s coins matches 50.. run scoreboard players remove @s coins 50

scoreboard players set @s currentPage -1

item replace entity @s armor.chest with leather_chestplate{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

item replace entity @s armor.legs with leather_leggings{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

item replace entity @s armor.feet with leather_boots{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1