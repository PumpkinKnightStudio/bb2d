execute as @a[scores={playerID=1..}] at @s as @e[type=#core:playerid_link_all] if score @s petsID = @p playerID run execute as @s[tag=petModel] run scoreboard players operation @p petsID = @s[type=minecraft:armor_stand] petsID

scoreboard players operation @s[type=player,scores={activePets=1}] speedEFA += @s has_pets1
scoreboard players add @s[type=player,scores={activePets=1}] speedEFTA 1


scoreboard players operation @s[type=player,scores={activePets=2}] strengthEFA += @s has_pets2
scoreboard players add @s[type=player,scores={activePets=2}] strengthEFTA 1