



#item replace entity @s enderchest.13 with anvil{display:{Name:'{"text":"Self Upgrade","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:10,isMenu:1} 1

#execute if score @s classID matches 1 run item replace entity @s enderchest.13 with carrot_on_a_stick{display:{Name:'{"text":"Class Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,CustomModelData:100004,playerPage:10,isMenu:1} 1

#execute if score @s classID matches 2 run item replace entity @s enderchest.13 with carrot_on_a_stick{display:{Name:'{"text":"Class Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,CustomModelData:100010,playerPage:11,isMenu:1} 1

#execute if score @s classID matches 6 run item replace entity @s enderchest.13 with carrot_on_a_stick{display:{Name:'{"text":"Class Upgrade","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,CustomModelData:100010,playerPage:12,isMenu:1} 1

execute if score .gameState gameControl matches 3 run item replace entity @s enderchest.13 with barrier{display:{Name:'{"text":"Pets Selection","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,CustomModelData:0,playerPage:15,isMenu:1} 1
execute if score .gameState gameControl matches 0 run item replace entity @s enderchest.13 with spawner{display:{Name:'{"text":"Pets Selection","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,CustomModelData:100010,playerPage:15,isMenu:1} 1


item replace entity @s enderchest.15 with minecraft:ghast_spawn_egg{display:{Name:'{"text":"Rideable Selection","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,CustomModelData:100010,playerPage:14,isMenu:1} 1


#item replace entity @s enderchest.15 with barrier{display:{Name:'{"text":"Rideable Selection","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Option Disabled","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},CustomModelData:0,isMenu:1} 1

item replace entity @s enderchest.0 with barrier{CustomModelData:5,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:0,isMenu:1} 1

item replace entity @s enderchest.26 with barrier{CustomModelData:2,playerPage:0,isMenu:1} 1

scoreboard players set @s currentPage 8

