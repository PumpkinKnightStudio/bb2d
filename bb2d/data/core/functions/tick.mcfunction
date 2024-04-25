
execute if score .gameState gameControl matches 0.. run function core:2dlogic/arena/music/music_player



# WHEN GAME STARTED (3)
execute if score .gameState gameControl matches 0 run function core:2dlogic/arena/state_zero
execute if score .gameState gameControl matches 1 run function core:2dlogic/arena/state_one
execute if score .gameState gameControl matches 2 run function core:2dlogic/arena/state_two_s
execute if score .gameState gameControl matches 3 run function core:2dlogic/arena/game_running

effect give @a saturation 1 1 true

