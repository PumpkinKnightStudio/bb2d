scoreboard players set @a[scores={impactCooldown=..3}] stunted 0
execute as @a[scores={playerID=1..}] run function core:2dlogic/stunt_break

scoreboard players set @a[scores={stunt_immune=1..}] stunted 0
scoreboard players remove @a[scores={stunt_immune=1..}] stunt_immune 1

execute as @a[scores={sword_swing=10..}] run effect give @s slowness 1 2 true
execute as @a[scores={bow_aim=1..}] run effect give @s slowness 1 2 true
execute as @a[scores={sword_swing=-1}] run effect clear @s slowness