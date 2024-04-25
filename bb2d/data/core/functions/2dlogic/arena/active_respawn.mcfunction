

scoreboard players remove @a[scores={respawning=1..}] respawning 1
scoreboard players set @a[scores={respawning=1..}] walking 0
scoreboard players add @e[tag=eliminate] eliminateEffect 1

kill @e[tag=eliminate,scores={eliminateEffect=38..}]
