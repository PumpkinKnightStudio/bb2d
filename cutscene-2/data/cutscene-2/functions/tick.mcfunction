scoreboard players add @e[scores={cutscenetimer-2=0..}] cutscenetimer-2 1
execute as @e[scores={cutscenetimer-2=1..60}] at @s run tp @s ~0 ~0 ~0.08 ~ ~0

execute as @a at @s as @e[tag=respawner,scores={cutscenetimer-2=61}] if score @s playerID = @p playerID run ride @p dismount 

execute as @a at @s as @e[tag=respawner,scores={cutscenetimer-2=1..60}] if score @s playerID = @p playerID run ride @p mount @s


execute as @e[scores={cutscenetimer-2=61..120}] at @s run tp @s ~0 ~0.1 ~0 ~0 ~0

execute as @e[scores={cutscenetimer-2=120}] at @s run kill @s

scoreboard players set @e[scores={cutscenetimer-2=120..}] cutscenetimer-2 -1