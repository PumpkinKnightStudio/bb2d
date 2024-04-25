scoreboard players add @a[scores={cutscenetimer-104=0..}] cutscenetimer-104 1
execute as @a[scores={cutscenetimer-104=1..40}] at @s run tp @s ~0 ~0 ~0 ~0 ~0
execute as @a[scores={cutscenetimer-104=41..60}] at @s run tp @s ~0 ~0 ~0 ~6.9 ~0
execute as @a[scores={cutscenetimer-104=61..220}] at @s run tp @s ~0 ~0 ~0 ~0 ~0
execute as @a[scores={cutscenetimer-104=61..220}] at @s run tp @s ~0 ~0 ~0 138 0
scoreboard players set @a[scores={cutscenetimer-104=220..}] cutscenetimer-104 -1

execute as @a[scores={cutscenetimer-104=1..220}] at @s run effect give @s slowness 1 255 true
execute as @a[scores={cutscenetimer-104=1..220}] at @s run effect give @s jump_boost 1 128 true