
## RANDOM TEAM ##

execute if block 38 5 -430 minecraft:lever[powered=false] run execute if score .useRandomTeam gameSetting matches 2 run function core:2dlogic/arena/setting/team_func

execute if block 38 5 -430 minecraft:lever[powered=false] run scoreboard players set .useRandomTeam gameSetting 0

execute if block 38 5 -430 minecraft:lever[powered=false] run kill @e[tag=team_selector2]

execute if block 38 5 -430 minecraft:lever[powered=true] run execute if score .useRandomTeam gameSetting matches 0 run scoreboard players set .useRandomTeam gameSetting 1

execute if score .useRandomTeam gameSetting matches 1 run function core:2dlogic/arena/setting/random_team_trigger

#################

#execute if block 38 5 -430 minecraft:lever[powered=false] run execute if score .active lowPerformMode matches 2 run function core:2dlogic/arena/setting/some_function
execute if block 226 6 -277 minecraft:lever[powered=false] run execute if score .active lowPerformMode matches 2 run tellraw @a [{"text":"Setting: Using Normal Animation Calculation \n(The Animation may be stuttered)."}]
execute if block 226 6 -277 minecraft:lever[powered=false] run execute if score .active lowPerformMode matches 2 run scoreboard players set .active lowPerformMode 0

execute if block 226 6 -277 minecraft:lever[powered=true] run execute if score .active lowPerformMode matches 0 run scoreboard players set .active lowPerformMode 1

execute if score .active lowPerformMode matches 1 run function core:2dlogic/arena/setting/anim_perform
