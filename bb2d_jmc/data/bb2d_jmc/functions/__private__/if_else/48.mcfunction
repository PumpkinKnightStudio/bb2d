bossbar set minecraft:faction_spawn players @a
scoreboard players set __if_else__ __variable__ 0
execute if score .musicNum musicBoard matches 3 run function bb2d_jmc:__private__/if_else/46
execute if score __if_else__ __variable__ matches 0 run function bb2d_jmc:__private__/if_else/47