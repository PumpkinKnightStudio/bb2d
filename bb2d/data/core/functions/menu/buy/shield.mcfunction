execute if score @s coins matches ..59 run tellraw @s [{"text":"You do not have enough coins to buy this item.","color":"red"}]

execute if score @s coins matches 60.. run give @s shield{display:{Name:'{"text":"Shield","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,element:1,spell_id:4,reduc:180,droppable:1} 1

execute if score @s coins matches 60.. run scoreboard players remove @s coins 60