execute if score @s coins matches ..39 run tellraw @s [{"text":"You do not have enough coins to buy this item.","color":"red"}]

execute if score @s coins matches 40.. run give @s carrot_on_a_stick{display:{Name:'{"text":"Break Block (Iron Pickaxe)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100003,builder:1,break:1,droppable:1} 1

execute if score @s coins matches 40.. run scoreboard players remove @s coins 40