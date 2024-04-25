execute store result score @s chargeTime run data get entity @s SelectedItem.tag.charge
#scoreboard players add @s sword_swing 2

scoreboard players add @s chargeNegate 1

execute if score @s chargeNegate >= @s chargeTime run execute if score @s sword_swing matches 1.. run scoreboard players add @s sword_swing 1
execute if score @s chargeNegate >= @s chargeTime run scoreboard players set @s chargeNegate 0

execute if score @s sword_swing matches ..1 run scoreboard players add @s sword_swing 1