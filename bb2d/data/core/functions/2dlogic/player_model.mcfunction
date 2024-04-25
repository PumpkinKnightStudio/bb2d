
execute as @e[type=armor_stand,tag=model] at @s run function core:2dlogic/player_model_calibrator

## UPDATE-8.1
#scoreboard players set @s[scores={impactCooldown=..1}] impactCooldown -10000

execute as @a[scores={playerID=1..}] run function core:2dlogic/player_model_redux_activator
execute as @e[tag=damagable] run function core:2dlogic/player_damage_redux


