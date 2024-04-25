scoreboard players remove @s playerLives 1
execute if score @s playerLives matches 5 run attribute @s minecraft:generic.max_health base set 10
execute if score @s playerLives matches 4 run attribute @s minecraft:generic.max_health base set 8
execute if score @s playerLives matches 3 run attribute @s minecraft:generic.max_health base set 6
execute if score @s playerLives matches 2 run attribute @s minecraft:generic.max_health base set 4
execute if score @s playerLives matches 1 run attribute @s minecraft:generic.max_health base set 2
execute if score @s playerLives matches ..0 run attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:instant_health 1 1
execute if score @s playerLives matches ..0 run function bb2d_jmc:__private__/if_else/10