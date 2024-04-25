execute if score @s currentPage matches -2 run function core:menu/page/page12_check
execute if score @s currentPage matches -2 run scoreboard players set @s currentPage -1

execute if score @s currentPage matches 12 run execute as @s[team=left] run execute if score .point factionPoint matches -449.. run item replace entity @s enderchest.14 with barrier{display:{Name:'{"text":"Island 2","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},ordering:1,isMenu:1} 1

execute if score @s currentPage matches 12 run execute as @s[team=left] run execute if score .point factionPoint2 matches ..-450 run item replace entity @s enderchest.12 with shulker_shell{display:{Name:'{"text":"Island 1","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},ordering:1,isMenu:1} 1
execute if score @s currentPage matches 12 run execute as @s[team=left] run execute if score .point factionPoint2 matches -449.. run item replace entity @s enderchest.12 with barrier{display:{Name:'{"text":"Island 1","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},isMenu:1} 1

execute if score @s currentPage matches 12 run execute as @s[team=left] run execute if score .point factionPoint matches ..-450 run item replace entity @s enderchest.14 with shulker_shell{display:{Name:'{"text":"Island 2","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},ordering:1,isMenu:1} 1
execute if score @s currentPage matches 12 run execute as @s[team=left] run execute if score .point factionPoint2 matches -449..450 run item replace entity @s enderchest.14 with barrier{display:{Name:'{"text":"Island 2","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},isMenu:1} 1


execute if score @s currentPage matches 12 run execute as @s[team=right] run execute if score .point factionPoint matches ..449 run item replace entity @s enderchest.14 with barrier{display:{Name:'{"text":"Island 1","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},isMenu:1} 1

execute if score @s currentPage matches 12 run execute as @s[team=right] run execute if score .point factionPoint2 matches 450.. run item replace entity @s enderchest.12 with shulker_shell{display:{Name:'{"text":"Island 2","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},ordering:1,isMenu:1} 1
execute if score @s currentPage matches 12 run execute as @s[team=right] run execute if score .point factionPoint2 matches ..449 run item replace entity @s enderchest.12 with barrier{display:{Name:'{"text":"Island 2","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},isMenu:1} 1

execute if score @s currentPage matches 12 run execute as @s[team=right] run execute if score .point factionPoint matches 450.. run item replace entity @s enderchest.14 with shulker_shell{display:{Name:'{"text":"Island 1","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},ordering:1,isMenu:1} 1
execute if score @s currentPage matches 12 run execute as @s[team=right] run execute if score .point factionPoint2 matches -450..449 run item replace entity @s enderchest.12 with barrier{display:{Name:'{"text":"Island 2","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},isMenu:1} 1




item replace entity @s enderchest.0 with barrier{CustomModelData:5,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:0,isMenu:1} 1
item replace entity @s enderchest.26 with barrier{CustomModelData:3,playerPage:0,isMenu:1} 1

scoreboard players set @s currentPage 12