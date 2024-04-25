
#scoreboard players set @s stopMoveTimer 10

execute if score @s bow_aim matches 0 run scoreboard players set @s bow_aim 1

execute if score @s[type=player] bow_aim matches 2.. run function core:spells/physical/bow/shoot

execute unless score @s bow_aim matches 0 run execute unless score @s bow_aim matches 1.. run scoreboard players set @s bow_aim 0




execute if score @s bow_aim matches -1 run execute unless score @s bow_aim matches 1.. run scoreboard players set @s bow_aim 0
