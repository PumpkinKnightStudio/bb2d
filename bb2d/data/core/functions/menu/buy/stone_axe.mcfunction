execute if score @s coins matches ..29 run tellraw @s [{"text":"You do not have enough coins to buy this item.","color":"red"}]

execute if score @s coins matches 30.. run give @s carrot_on_a_stick{display:{Name:'{"text":"Break Block (Stone Axe)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100015,builder:1,break:2,droppable:1} 1

execute if score @s coins matches 30.. run scoreboard players remove @s coins 30