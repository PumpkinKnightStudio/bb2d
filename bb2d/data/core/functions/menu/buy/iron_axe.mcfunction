execute if score @s coins matches ..59 run tellraw @s [{"text":"You do not have enough coins to buy this item.","color":"red"}]

execute if score @s coins matches 60.. run give @s carrot_on_a_stick{display:{Name:'{"text":"Attack (Sword)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100009,element:1,spell_id:2,damage:80,swordtype:1,stun:20,charge:2,droppable:1} 1

execute if score @s coins matches 60.. run scoreboard players remove @s coins 60