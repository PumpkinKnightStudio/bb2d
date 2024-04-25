
#execute at @s run execute unless entity @e[type=armor_stand,distance=0.2..2.5] run kill @s
execute at @s[tag=left] run execute positioned ~9 ~ ~ run scoreboard players add @e[team=right,distance=..2.5] effect.paralyze.time 40
execute at @s[tag=right] run execute positioned ~9 ~ ~ run scoreboard players add @e[team=left,distance=..2.5] effect.paralyze.time 40