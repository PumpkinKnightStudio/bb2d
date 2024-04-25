execute as @a[scores={on_event_15djdg7=1..}] at @s run function bb2d_jmc:__private__/on_event/custom_leave_game
scoreboard players add $__global__ 000oqtozt_p_join 1
scoreboard players add @a 000oqtozt_p_join 1
execute as @a unless score @s 000oqtozt_p_join = $__global__ 000oqtozt_p_join run function bb2d_jmc:__private__/player_join/main
execute if score .type gameType matches ..4 if score .gameState gameControl matches 3 run function bb2d_jmc:__private__/if_else/50