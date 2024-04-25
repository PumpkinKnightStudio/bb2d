
#scoreboard players set @s stopMoveTimer 10

execute if score @s sword_swing matches 0 run scoreboard players set @s sword_swing 1

execute if score @s[type=player] sword_swing matches 2.. run function core:spells/physical/sword/swing

execute unless score @s sword_swing matches 0 run execute unless score @s sword_swing matches 1.. run execute unless score @s sword_swing matches ..1 run scoreboard players set @s sword_swing 0




execute if score @s sword_swing matches -1 run execute unless score @s sword_swing matches 1.. run scoreboard players set @s sword_swing 0
