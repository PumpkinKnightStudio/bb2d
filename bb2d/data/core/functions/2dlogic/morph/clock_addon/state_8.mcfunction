playsound minecraft:clock.slow player @a ~ ~ ~ 0.5 1
execute as @s[team=left] at @s run scoreboard players add @a[distance=..12,team=right] effect.paralyze.time 100
execute as @s[team=right] at @s run scoreboard players add @a[distance=..12,team=left] effect.paralyze.time 100