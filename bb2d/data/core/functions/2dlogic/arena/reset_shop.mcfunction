function core:menu/reset
scoreboard players set @s playerPage 0

item replace entity @s enderchest.11 with barrier{display:{Name:'{"text":"Not Available","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Option Disabled","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},CustomModelData:0,isMenu:1} 1

item replace entity @s enderchest.13 with anvil{display:{Name:'{"text":"Customization","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:8,isMenu:1} 1
item replace entity @s enderchest.15 with barrier{display:{Name:'{"text":"Not Available","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Option Disabled","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},CustomModelData:0,isMenu:1} 1


item replace entity @s enderchest.26 with barrier{CustomModelData:2,playerPage:0,isMenu:1} 1

scoreboard players set @s currentPage 0