execute as @a run execute unless score @s effect.paralyze.time matches 1.. run execute as @s[scores={cast=1..}] at @s run function core:spells/directory
execute as @a run execute if score @s effect.paralyze.time matches 1.. run scoreboard players set @s cast 0
