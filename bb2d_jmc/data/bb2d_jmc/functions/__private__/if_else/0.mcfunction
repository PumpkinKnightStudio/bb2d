team join lobby @s
scoreboard players set @s playerPage 0
function core:2dlogic/arena/reset_shop
tp @s 237 5 -281 -0.0 -15.0
execute if entity @s run function cutscene-101:start
function bb2d_jmc:join/play_lobby_music
scoreboard players set __if_else__ __variable__ 1