scoreboard players add @e[scores={cutscenetimer-102=0..}] cutscenetimer-102 1
execute as @e[scores={cutscenetimer-102=1..20}] at @s run tp @s ~0 ~0 ~0 ~0 ~0
execute as @e[scores={cutscenetimer-102=21..40}] at @s run tp @s ~0 ~0 ~0 ~-2.25 ~-0.5
execute as @e[scores={cutscenetimer-102=41..80}] at @s run tp @s ~-0.15 ~0 ~-0.35 ~0 ~0
execute as @e[scores={cutscenetimer-102=81..100}] at @s run tp @s ~-0.9 ~0.7 ~-0.7 ~0 ~0
execute as @e[scores={cutscenetimer-102=101..120}] at @s run tp @s ~-1.1 ~0.45 ~-0.6 ~0 ~0
scoreboard players set @e[scores={cutscenetimer-102=120..}] cutscenetimer-102 -1