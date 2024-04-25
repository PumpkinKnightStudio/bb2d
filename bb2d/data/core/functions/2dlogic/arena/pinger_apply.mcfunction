



#execute as @a at @s as @e if score @s playerID_Pinger = @p playerID run execute as @s at @s run execute as @p run function core:2dlogic/arena/assign_player

#execute as @r[scores={playerID=1..},tag=!inGame] at @s run function core:2dlogic/arena/assign_player
execute as @a run execute if score @s playerID = .playerAmount gameDatabase run function core:2dlogic/arena/assign_player



