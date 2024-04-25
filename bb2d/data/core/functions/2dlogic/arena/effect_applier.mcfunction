execute if score @s effect_inked matches 1.. run title @s title {"text":"\uE025"}
execute if score @s effect_inked matches 1.. run scoreboard players remove @s effect_inked 1

execute if score @s effect.poison matches 6.. run scoreboard players set @s effect.poison 6
execute if score @s effect.poison matches 1.. run execute unless score @s etime.poison matches 1.. run scoreboard players set @s etime.poison 60
execute if score @s effect.poison matches 1.. run effect give @s minecraft:poison 1 0 true
execute if score @s etime.poison matches 1 run scoreboard players remove @s effect.poison 1
execute if score @s etime.poison matches 1.. run scoreboard players remove @s etime.poison 1
execute if score @s effect.poison matches 1.. run scoreboard players add @s effect.poison.timer 1

execute if score @s effect.poison.timer matches 20 run scoreboard players operation @s effect.poison.dmg = @s effect.poison
execute if score @s effect.poison.timer matches 20 run scoreboard players operation @s effect.poison.dmg *= .3 numValue
execute if score @s effect.poison.timer matches 20 run scoreboard players operation @s damage = @s effect.poison.dmg
execute if score @s effect.poison.timer matches 20 run scoreboard players set @s effect.poison.timer 0

execute if score @s effect.paralyze.time matches 1.. run scoreboard players remove @s effect.paralyze.time 1
execute if score @s effect.paralyze.time matches 1.. run effect give @s slowness 1 255 true
execute if score @s effect.paralyze.time matches 1.. run effect give @s jump_boost 1 128 true
execute if score @s effect.paralyze.time matches 1.. run title @s actionbar {"text":"Paralyzed!"}
execute if score @s effect.paralyze.time matches 1 run title @s actionbar {"text":""}

execute if score @s effect.warcry matches 1.. run scoreboard players remove @s effect.warcry 1
