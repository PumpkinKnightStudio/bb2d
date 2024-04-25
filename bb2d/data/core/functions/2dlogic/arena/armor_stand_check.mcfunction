execute as @s[tag=unset,tag=spawn_dexplosion] run function core:2dlogic/morph/devast_addon/state_5s
execute as @s[tag=unset,tag=spawn_leo.rift] run function core:2dlogic/morph/leo_addon/state_5s
execute as @s[tag=spawn_leo.rift] run function core:2dlogic/morph/leo_addon/state_5d
execute as @s[tag=spawn_dexplosion] run function core:2dlogic/morph/devast_addon/state_5p
execute as @s[tag=spawn_dsphear,scores={req_delete=96..}] run function core:2dlogic/morph/devast_addon/state_6a
execute as @s[tag=spawn_dsphear,scores={req_delete=95}] run function core:2dlogic/morph/devast_addon/state_6b
execute as @s[tag=spawn_dexplosion2] run function core:2dlogic/morph/devast_addon/state_6e2
execute as @s[tag=spawn_dsphear,scores={req_delete=95}] at @s run function core:2dlogic/morph/devast_addon/state_6f
execute as @s[tag=spawn_dsphear,scores={req_delete=1}] at @s run function core:2dlogic/morph/devast_addon/state_6c

execute as @s[tag=leo.bolt,scores={req_delete=1..}] at @s run function core:2dlogic/morph/leo_addon/state_4s
tag @s[tag=unset,scores={damagerID=1..}] remove unset