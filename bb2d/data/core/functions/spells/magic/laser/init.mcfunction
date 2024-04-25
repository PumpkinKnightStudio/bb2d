
#scoreboard players set @s stopMoveTimer 10

execute if score @s magic_cast matches 0 run scoreboard players set @s magic_cast 1

execute if score @s[type=player] magic_cast matches 2.. run function core:spells/magic/laser/shoot

execute unless score @s magic_cast matches 0 run execute unless score @s magic_cast matches 1.. run scoreboard players set @s magic_cast 0




execute if score @s magic_cast matches -1 run execute unless score @s magic_cast matches 1.. run scoreboard players set @s magic_cast 0
