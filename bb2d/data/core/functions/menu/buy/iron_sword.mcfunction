execute if score @s coins matches ..39 run tellraw @s [{"text":"You do not have enough coins to buy this item.","color":"red"}]

execute if score @s coins matches 40.. run give @s carrot_on_a_stick{display:{Name:'{"text":"Attack (Sword)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100004,element:1,spell_id:2,damage:60,swordtype:1,stun:0,charge:0,droppable:1} 1

execute if score @s coins matches 40.. run scoreboard players remove @s coins 40