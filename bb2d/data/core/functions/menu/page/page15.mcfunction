execute if score @s currentPage matches -2 run function core:menu/page/page15_check

execute if score @s currentPage matches -2 run scoreboard players set @s currentPage -1


execute unless score @s has_pets1 matches 1.. run item replace entity @s enderchest.1 with minecraft:allay_spawn_egg{display:{Name:'{"text":"Spirit of Speed (Locked)","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"        \\uE034","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" Samus\'s Collection","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},ordering:1,isMenu:1} 1

execute if score @s has_pets1 matches 1.. run item replace entity @s enderchest.1 with minecraft:allay_spawn_egg{display:{Name:'{"text":"Spirit of Speed","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"     \\uE034","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" Samus\'s Collection","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},ordering:1,isMenu:1} 1

execute if score @s activePets matches 1 run item replace entity @s enderchest.1 with minecraft:allay_spawn_egg{display:{Name:'{"text":"Spirit of Speed (Selected)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"        \\uE034","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" Samus\'s Collection","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},ordering:1,isMenu:1} 1



execute unless score @s has_pets2 matches 1.. run item replace entity @s enderchest.2 with minecraft:strider_spawn_egg{display:{Name:'{"text":"Spirit of Strength (Locked)","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"        \\uE035","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" Samus\'s Collection","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},ordering:1,isMenu:1} 1

execute if score @s has_pets2 matches 1.. run item replace entity @s enderchest.2 with minecraft:strider_spawn_egg{display:{Name:'{"text":"Spirit of Strength","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"     \\uE035","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" Samus\'s Collection","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},ordering:1,isMenu:1} 1

execute if score @s activePets matches 2 run item replace entity @s enderchest.2 with minecraft:strider_spawn_egg{display:{Name:'{"text":"Spirit of Strength (Selected)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":" "}','{"text":"        \\uE035","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" "}','{"text":" Samus\'s Collection","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},ordering:1,isMenu:1} 1





item replace entity @s enderchest.0 with barrier{CustomModelData:5,display:{Name:'{"text":"Back","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},playerPage:0,isMenu:1} 1

item replace entity @s enderchest.26 with barrier{CustomModelData:3,display:{Name:'{"text":"","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},isMenu:1} 1

scoreboard players set @s currentPage 14