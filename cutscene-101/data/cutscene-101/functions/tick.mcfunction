scoreboard players add @a[scores={cutscenetimer-101=0..}] cutscenetimer-101 1
effect give @a[scores={cutscenetimer-101=1..}] slowness 1 255
effect give @a[scores={cutscenetimer-101=1..}] jump_boost 1 128
execute as @a[scores={cutscenetimer-101=1..40}] at @s run tp @s ~0 ~0 ~0.075 0 0
execute as @a[scores={cutscenetimer-101=41..60}] at @s run tp @s ~0 ~0 ~0.05 0 0
execute as @a[scores={cutscenetimer-101=61..100}] at @s run tp @s ~0 ~0 ~0.075 0 0
tp @a[scores={cutscenetimer-101=100..}] 237 5 -281 0 -15
scoreboard players set @a[scores={cutscenetimer-101=100..}] cutscenetimer-101 -1