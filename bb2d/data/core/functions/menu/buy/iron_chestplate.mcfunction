execute if score @s coins matches ..99 run tellraw @s [{"text":"You do not have enough coins to buy this upgrade.","color":"red"}]

execute if score @s coins matches 100.. run scoreboard players set @s armorC_Level 3
execute if score @s coins matches 100.. run execute at @s run playsound minecraft:game.upgraded player @s ~ ~ ~ 0.6 1


scoreboard players set @s currentPage -1

execute if score @s coins matches 100.. run item replace entity @s armor.chest with iron_chestplate{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute if score @s coins matches 100.. run item replace entity @s armor.legs with iron_leggings{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute if score @s coins matches 100.. run item replace entity @s armor.feet with iron_boots{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute if score @s coins matches 100.. run scoreboard players remove @s coins 100