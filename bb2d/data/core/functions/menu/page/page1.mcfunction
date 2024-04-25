#item replace entity @s enderchest.11 with iron_chestplate{display:{Name:'{"text":"Purchase Armor","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,playerPage:2,isMenu:1} 1


#execute if score @s useCustomHead matches 0 run item replace entity @s enderchest.11 with iron_sword{display:{Name:'{"text":"Purchase Weapons","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,playerPage:4,isMenu:1} 1
#execute if score @s useCustomHead matches 1.. run item replace entity @s enderchest.11 with iron_sword{display:{Name:'{"text":"Weapons (Locked)","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,isMenu:1} 1
item replace entity @s enderchest.11 with iron_sword{display:{Name:'{"text":"Purchase Weapons","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,playerPage:4,isMenu:1} 1
#item replace entity @s enderchest.13 with iron_pickaxe{display:{Name:'{"text":"Purchase Tools","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,playerPage:5,isMenu:1} 1


execute if score @s useCustomHead matches 0.. run item replace entity @s enderchest.12 with iron_pickaxe{display:{Name:'{"text":"Purchase Tools & Utilities","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,playerPage:6,isMenu:1} 1
#execute if score @s useCustomHead matches 1.. run item replace entity @s enderchest.12 with iron_pickaxe{display:{Name:'{"text":"Tools & Utilities (Locked)","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,isMenu:1} 1
execute if score @s useCustomHead matches 0.. run item replace entity @s enderchest.13 with cobweb{display:{Name:'{"text":"Purchase Placable Items","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:2,playerPage:7,isMenu:1} 1

#item replace entity @s enderchest.14 with iron_chestplate{display:{Name:'{"text":"Upgrade Armor","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:9,isMenu:1} 1
item replace entity @s enderchest.14 with barrier{display:{Name:'{"text":"Upgrade Armor (Disabled)","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},isMenu:1} 1
item replace entity @s enderchest.0 with barrier{CustomModelData:5,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:0,isMenu:1} 1

item replace entity @s enderchest.26 with barrier{CustomModelData:3,playerPage:0,isMenu:1} 1

scoreboard players set @s currentPage 1