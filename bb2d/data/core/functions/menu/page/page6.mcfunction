

execute if score @s currentPage matches -2 run function core:menu/page/page6_check
execute if score @s currentPage matches -2 run scoreboard players set @s currentPage -1

######################################


execute if score @s currentPage matches -1 run item replace entity @s enderchest.1 with iron_pickaxe{display:{Name:'{"text":"Purchase Iron Pickaxe","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"   "}','{"text":" • Cost 40 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1
execute if score @s currentPage matches -1 run item replace entity @s enderchest.2 with stone_axe{display:{Name:'{"text":"Purchase Stone Axe","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"   "}','{"text":" • Cost 30 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1


######################################

loot replace entity @s enderchest.18 loot core:coins

item replace entity @s enderchest.0 with barrier{CustomModelData:5,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:1,isMenu:1} 1

item replace entity @s enderchest.26 with barrier{CustomModelData:3,playerPage:0,isMenu:1} 1


scoreboard players set @s currentPage 6

