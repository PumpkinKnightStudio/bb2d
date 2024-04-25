execute as @s unless data entity @s EnderItems[{Slot:11b}] run execute unless score @s armorC_Level matches 1..5 run function core:menu/buy/leather_chestplate

execute as @s unless data entity @s EnderItems[{Slot:12b}] run execute if score @s armorC_Level matches 1 run function core:menu/buy/chain_chestplate

execute as @s unless data entity @s EnderItems[{Slot:13b}] run execute if score @s armorC_Level matches 2 run function core:menu/buy/iron_chestplate

execute as @s unless data entity @s EnderItems[{Slot:14b}] run execute if score @s armorC_Level matches 3 run function core:menu/buy/diamond_chestplate

execute as @s unless data entity @s EnderItems[{Slot:15b}] run execute if score @s armorC_Level matches 4 run function core:menu/buy/netherite_chestplate