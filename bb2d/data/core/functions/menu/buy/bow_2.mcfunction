execute if score @s coins matches ..39 run tellraw @s [{"text":"You do not have enough coins to buy this block.","color":"red"}]

execute if score @s coins matches 40.. run give @s carrot_on_a_stick{display:{Name:'{"text":"Bow (long Range Attack)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100001,element:1,spell_id:1,droppable:1} 1

execute if score @s coins matches 40.. run scoreboard players remove @s coins 40