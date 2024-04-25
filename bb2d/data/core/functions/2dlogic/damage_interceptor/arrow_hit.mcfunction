execute at @s[team=left] run execute as @e[team=right,type=armor_stand,sort=nearest,limit=1] at @s as @e if score @s playerID = @p playerID run execute as @s[type=player] run scoreboard players set @s dam_recieved 1

execute at @s[team=right] run execute as @e[team=left,type=armor_stand,sort=nearest,limit=1] at @s as @e if score @s playerID = @p playerID run execute as @s[type=player] run scoreboard players set @s dam_recieved 1

kill @s[type=arrow]