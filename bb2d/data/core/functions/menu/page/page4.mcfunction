

execute if score @s currentPage matches -2 run function core:menu/page/page4_check
execute if score @s currentPage matches -2 run scoreboard players set @s currentPage -1

######################################

execute if score @s useCustomHead matches 0 run execute if score @s currentPage matches -1 run item replace entity @s enderchest.1 with iron_sword{display:{Name:'{"text":"Purchase Iron Sword","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 40 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s useCustomHead matches 0 run execute if score @s currentPage matches -1 run item replace entity @s enderchest.2 with iron_axe{display:{Name:'{"text":"Purchase Iron Axe","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 60 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s useCustomHead matches 0 run execute if score @s currentPage matches -1 run item replace entity @s enderchest.10 with bow{display:{Name:'{"text":"Purchase a Bow","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 40 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s useCustomHead matches 0 run execute if score @s currentPage matches -1 run item replace entity @s enderchest.11 with barrier{display:{Name:'{"text":"Purchase an arrow (x8)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 20 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1} 1

execute if score @s useCustomHead matches 0 run execute if score @s currentPage matches -1 run item replace entity @s enderchest.19 with shield{display:{Name:'{"text":"Purchase a Shield","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 60 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1



execute if score @s useCustomHead matches 1.. run execute if score @s currentPage matches -1 run item replace entity @s enderchest.1 with barrier{display:{Name:'{"text":"Purchase Iron Sword","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 40 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1} 1

execute if score @s useCustomHead matches 1.. run execute if score @s currentPage matches -1 run item replace entity @s enderchest.2 with barrier{display:{Name:'{"text":"Purchase Iron Axe","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 60 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1} 1

execute if score @s useCustomHead matches 1.. run execute if score @s currentPage matches -1 run item replace entity @s enderchest.10 with barrier{display:{Name:'{"text":"Purchase a Bow","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 40 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1} 1

execute if score @s useCustomHead matches 1.. run execute if score @s currentPage matches -1 run item replace entity @s enderchest.11 with barrier{display:{Name:'{"text":"Purchase an arrow (x8)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 20 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1} 1

execute if score @s useCustomHead matches 1.. run execute if score @s currentPage matches -1 run item replace entity @s enderchest.19 with barrier{display:{Name:'{"text":"Purchase a Shield","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Cost 60 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1} 1



execute if score @s currentPage matches -1 run item replace entity @s enderchest.20 with tnt{display:{Name:'{"text":"Purchase TNT","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" [!] Affect Both Team [!]","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" • Cost 30 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run item replace entity @s enderchest.3 with stone_pressure_plate{display:{Name:'{"text":"Purchase Landmine","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Affect opposite team","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"   "}','[{"text":" • ","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Trigger when the other","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" team stepped on it.","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":" • ","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Explode when no one step on it.","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','{"text":" (Opposite Team Only)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"  "}','{"text":" • Cost 40 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1

execute if score @s currentPage matches -1 run item replace entity @s enderchest.12 with ink_sac{display:{Name:'{"text":"Purchase Ink Sac","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" • Affect opposite team","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" • Long Range (Chargeable)","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":"   "}','{"text":" • Cost 15 Coins","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:2,isMenu:1,ordering:1} 1



######################################



item replace entity @s enderchest.0 with barrier{CustomModelData:5,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:1,isMenu:1} 1

item replace entity @s enderchest.26 with barrier{CustomModelData:3,playerPage:0,isMenu:1} 1


scoreboard players set @s currentPage 4