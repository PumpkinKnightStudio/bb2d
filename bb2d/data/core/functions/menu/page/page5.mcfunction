execute if score @s currentPage matches -2 run function core:menu/page/page5_check
execute if score @s currentPage matches -2 run scoreboard players set @s currentPage -1

loot replace entity @s enderchest.18 loot core:coins

item replace entity @s enderchest.11 with iron_pickaxe{display:{Name:'{"text":"Iron Pickaxe","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,isMenu:1,ordering:1} 1

item replace entity @s enderchest.0 with barrier{CustomModelData:1,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:1,isMenu:1} 1

item replace entity @s enderchest.26 with barrier{CustomModelData:3,playerPage:0,isMenu:1} 1

scoreboard players set @s currentPage 5