scoreboard players set __if_else__ __variable__ 0
execute if score @s playerID matches 1.. run function bb2d_jmc:__private__/if_else/4
execute if score __if_else__ __variable__ matches 0 run function bb2d_jmc:__private__/if_else/5
scoreboard players set __if_else__ __variable__ 1