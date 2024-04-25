execute if score @s chr_gender matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" "},{"text":"shouldn't be walking with a squid ink covering their eyes.","color":"yellow"}]
execute if score @s chr_gender matches 1 run tellraw @a ["",{"selector":"@s"},{"text":" "},{"text":"shouldn't be walking with a squid ink covering his eyes.","color":"yellow"}]
execute if score @s chr_gender matches 2 run tellraw @a ["",{"selector":"@s"},{"text":" "},{"text":"shouldn't be walking with a squid ink covering her eyes.","color":"yellow"}]
scoreboard players set $dm_triggered __variable__ 1