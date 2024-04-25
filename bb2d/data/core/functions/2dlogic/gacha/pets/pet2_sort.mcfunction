tellraw @a ["",{"text":"PetPal: ","color":"dark_aqua"},{"selector":"@s"},{"text":" received a Spirit of Strength.","color":"red"}]

execute if score @s has_pets2 matches 5.. run scoreboard players add @s gold 40
execute if score @s has_pets2 matches 5.. run tellraw @s ["",{"text":"PetPal: ","color":"dark_aqua"},{"text":"You have already upgraded your pets to the maximum level, you received a refund for 40 golds.","color":"aqua"}]

execute unless score @s has_pets2 matches 5.. run scoreboard players add @s has_pets2 1

execute if score @s has_pets2 matches ..4 run tellraw @s ["",{"text":"PetPal: ","color":"dark_aqua"},{"text":"Your pet is now level ","color":"green"},{"score":{"name":"@s","objective":"has_pets1"}},"."]
execute if score @s has_pets2 matches 5 run tellraw @s ["",{"text":"PetPal: ","color":"dark_aqua"},{"text":"Your pet is at the max level","color":"green"},"."]

