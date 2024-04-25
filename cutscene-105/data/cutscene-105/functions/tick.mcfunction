scoreboard players add @e[scores={cutscenetimer-105=0..}] cutscenetimer-105 1
execute as @e[scores={cutscenetimer-105=1..20}] at @s run tp @s ~0 ~0 ~0 ~0 ~0
execute as @e[scores={cutscenetimer-105=21..180}] at @s run tp @s ~0.10625 ~0 ~0.125 ~0.025 ~0
scoreboard players set @e[scores={cutscenetimer-105=180..}] cutscenetimer-105 -1