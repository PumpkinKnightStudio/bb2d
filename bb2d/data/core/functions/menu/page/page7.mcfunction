

execute if score @s currentPage matches -2 run function core:menu/page/page7_check
execute if score @s currentPage matches -2 run scoreboard players set @s currentPage -1

######################################

execute if score @s currentPage matches -1 run item replace entity @s enderchest.1 with stone{display:{Name:'{"text":"Purchase Stone (x8)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 20 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1
execute if score @s currentPage matches -1 run item replace entity @s enderchest.3 with oak_wood{display:{Name:'{"text":"Purchase Oak Wood (x8)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 20 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run item replace entity @s enderchest.2 with cobweb{display:{Name:'{"text":"Purchase Cobweb (x1)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 10 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

######################################

loot replace entity @s enderchest.18 loot core:coins

item replace entity @s enderchest.0 with barrier{CustomModelData:5,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:1,isMenu:1} 1

item replace entity @s enderchest.26 with barrier{CustomModelData:3,playerPage:0,isMenu:1} 1


scoreboard players set @s currentPage 7

