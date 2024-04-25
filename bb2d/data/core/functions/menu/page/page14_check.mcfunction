execute as @s unless data entity @s EnderItems[{Slot:1b}] run execute if score @s ulk.ride.nether matches 1 run scoreboard players set @s respawnModel 1

execute as @s unless data entity @s EnderItems[{Slot:2b}] run execute if score @s ulk.ride.glacial matches 1 run scoreboard players set @s respawnModel 2

execute as @s unless data entity @s EnderItems[{Slot:25b}] run execute if score @s ulk.ride.slime matches 1 run scoreboard players set @s respawnModel 3

execute as @s unless data entity @s EnderItems[{Slot:3b}] run execute if score @s ulk.ride.aether matches 1 run scoreboard players set @s respawnModel 4
