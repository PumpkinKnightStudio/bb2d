execute as @s[tag=spawn_cgrand,tag=left] run scoreboard players set @a[team=left,scores={useCustomHead=9}] chr.abi3.cd 400
execute as @s[tag=spawn_cgrand,tag=right] run scoreboard players set @a[team=right,scores={useCustomHead=9}] chr.abi3.cd 400

execute if score @s[tag=damagable] obj.healthRemain > @s health run kill @s

execute as @s[team=left,tag=spawn_cgrand] at @s positioned ~9 ~ ~ run scoreboard players add @a[team=left,distance=0..10] clock.skillCDRedux 1
execute as @s[team=right,tag=spawn_cgrand] at @s positioned ~9 ~ ~ run scoreboard players add @a[team=right,distance=0..10] clock.skillCDRedux 1
execute as @s[tag=spawn_cgrand] at @s run function core:2dlogic/morph/clock_addon/state_7s2
execute as @s[tag=spawn_czone] at @s run execute unless entity @e[tag=spawn_cgrand,distance=..0.5] run kill @s

#execute as @s[team=left,tag=spawn_cgrand] at @s run scoreboard players add @a[team=left,distance=0..10] clock.skillCDTimer 1
#execute as @s[team=right,tag=spawn_cgrand] at @s run scoreboard players add @a[team=right,distance=0..10] clock.skillCDTimer 1

execute as @s[tag=aiMob] run function core:2dlogic/coor
execute as @s[tag=aiMob] run function core:2dlogic/player_model_redux