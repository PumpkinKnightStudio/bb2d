scoreboard players operation @a[scores={playerID=1..}] playerLives = .giving playerLives
scoreboard objectives setdisplay list playerLives

execute as @a run execute if score @s playerLives matches 5 run attribute @s minecraft:generic.max_health base set 10
execute as @a run execute if score @s playerLives matches 4 run attribute @s minecraft:generic.max_health base set 8
execute as @a run execute if score @s playerLives matches 3 run attribute @s minecraft:generic.max_health base set 6
execute as @a run execute if score @s playerLives matches 2 run attribute @s minecraft:generic.max_health base set 4
execute as @a run execute if score @s playerLives matches 1 run attribute @s minecraft:generic.max_health base set 2
execute as @a run execute if score @s playerLives matches ..0 run attribute @s minecraft:generic.max_health base set 20
execute as @a run effect give @s minecraft:instant_health 1 1