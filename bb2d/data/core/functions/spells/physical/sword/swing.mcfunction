
#scoreboard players set @s stopMoveTimer 10
scoreboard players set @s[scores={sword_swing=0}] sword_swing 10

execute as @s at @s run playsound minecraft:entity.player.attack.sweep master @a ~-9 ~ ~ 1 1

execute if score @s sword_swing matches 1.. run function core:spells/physical/sword/attack3


execute if score @s sword_swing matches 1..14 run scoreboard players set @s sword_swing -3

execute if score @s sword_swing matches 15..29 run scoreboard players set @s sword_swing -7

execute if score @s sword_swing matches 30.. run scoreboard players set @s sword_swing -10

scoreboard players set @s shieldOn 0

