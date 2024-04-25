execute if score @s currentPage matches -2 run function core:menu/page/page9_check
execute if score @s currentPage matches -2 run scoreboard players set @s currentPage -1

execute if score @s currentPage matches -1 run execute unless score @s armorC_Level matches 1..5 run item replace entity @s enderchest.11 with leather_chestplate{display:{Name:'{"text":"Leather Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 50 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 1.. run item replace entity @s enderchest.11 with leather_chestplate{display:{Name:'{"text":"Leather Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Already Upgraded","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1
####################

execute if score @s currentPage matches -1 run execute unless score @s armorC_Level matches 1 run item replace entity @s enderchest.12 with chainmail_chestplate{display:{Name:'{"text":"Chain Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Required Leather Upgrade","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 1 run item replace entity @s enderchest.12 with chainmail_chestplate{display:{Name:'{"text":"Chain Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 75 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

####################

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 2.. run item replace entity @s enderchest.12 with chainmail_chestplate{display:{Name:'{"text":"Chain Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Already Upgraded","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute unless score @s armorC_Level matches 2 run item replace entity @s enderchest.13 with iron_chestplate{display:{Name:'{"text":"Iron Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Required Chain Upgrade","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 2 run item replace entity @s enderchest.13 with iron_chestplate{display:{Name:'{"text":"Iron Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 100 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

####################

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 3.. run item replace entity @s enderchest.13 with iron_chestplate{display:{Name:'{"text":"Iron Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Already Upgraded","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute unless score @s armorC_Level matches 3 run item replace entity @s enderchest.14 with diamond_chestplate{display:{Name:'{"text":"Diamond Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Required Iron Upgrade","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 3 run item replace entity @s enderchest.14 with diamond_chestplate{display:{Name:'{"text":"Diamond Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 150 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

####################

execute if score @s currentPage matches -1 run execute unless score @s armorC_Level matches 4 run item replace entity @s enderchest.15 with netherite_chestplate{display:{Name:'{"text":"Netherite Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Required Diamond Upgrade","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 4 run item replace entity @s enderchest.15 with netherite_chestplate{display:{Name:'{"text":"Netherite Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 200 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 4.. run item replace entity @s enderchest.14 with diamond_chestplate{display:{Name:'{"text":"Diamond Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Already Upgraded","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run execute if score @s armorC_Level matches 5 run item replace entity @s enderchest.15 with netherite_chestplate{display:{Name:'{"text":"Netherite Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Already Upgraded","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1


item replace entity @s enderchest.0 with barrier{CustomModelData:5,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:1,isMenu:1} 1

item replace entity @s enderchest.26 with barrier{CustomModelData:3,playerPage:1,isMenu:1} 1


scoreboard players set @s currentPage 9

