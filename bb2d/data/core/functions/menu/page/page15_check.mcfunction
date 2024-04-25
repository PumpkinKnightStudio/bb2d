execute as @s unless data entity @s EnderItems[{Slot:1b}] run execute if score @s has_pets1 matches 1.. run scoreboard players set @s activePets 1

execute as @s unless data entity @s EnderItems[{Slot:2b}] run execute if score @s has_pets2 matches 1.. run scoreboard players set @s activePets 2
