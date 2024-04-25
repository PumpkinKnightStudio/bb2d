scoreboard players add @e[scores={cutscenetimer-1=0..}] cutscenetimer-1 1

execute as @e[scores={cutscenetimer-1=1..60}] at @s run tp @s ~0 ~0 ~-0.1 ~0 ~0


execute as @a at @s as @e[tag=respawner,scores={cutscenetimer-1=61}] if score @s playerID = @p playerID run ride @p dismount 

execute as @a at @s as @e[tag=respawner,scores={cutscenetimer-1=1..60}] if score @s playerID = @p playerID run ride @p mount @s



execute as @e[scores={cutscenetimer-1=61..120}] at @s run tp @s ~0 ~0.1 ~-0.1 ~0 ~0

execute as @e[scores={cutscenetimer-1=120}] at @s run kill @s 
scoreboard players set @e[scores={cutscenetimer-1=120..}] cutscenetimer-1 -1