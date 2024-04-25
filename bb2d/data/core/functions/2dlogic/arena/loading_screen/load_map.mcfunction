title @a title {"text":"Loading","color":"white"}
#title @a times 0 15 0
effect give @a blindness 2 2 true


execute if score .screenTime loadingScreen matches 1..100 run title @a actionbar {"text":"Finished Generating Player Model","bold":true,"color":"gold"}
execute if score .screenTime loadingScreen matches 101..150 run title @a actionbar {"text":"Applying Patch 0/2","bold":true,"color":"yellow"}
execute if score .screenTime loadingScreen matches 101 run function core:2dlogic/arena/stage_three_apply

execute if score .screenTime loadingScreen matches 150.. run tp @a[team=left] -152 2 -239 90 0
execute if score .screenTime loadingScreen matches 150.. run tp @a[team=right] -152 2 -317 90 0

execute if score .screenTime loadingScreen matches 151 run title @a actionbar {"text":"Applying Patch 1/2","bold":true,"color":"green"}

execute if score .screenTime loadingScreen matches 200..201 run function core:setup/player_patch


execute if score .screenTime loadingScreen matches 240 run title @a actionbar {"text":"Initializing / Please Wait","bold":true,"color":"yellow"}
## PATCH NO MODEL
execute if score .screenTime loadingScreen matches 250 run scoreboard players set @a checkID 0
execute if score .screenTime loadingScreen matches 250 run execute as @e run execute at @s as @e if score @s playerID = @p playerID run scoreboard players add @s checkID 1
#execute if score .screenTime loadingScreen matches 290..401 run execute if entity @a[scores={checkID=1}] run function core:error_handler/error_1

#execute if score .screenTime loadingScreen matches 300 run execute unless entity @a[scores={checkID=1}] run scoreboard players set .screenTime loadingScreen 650
execute if score .screenTime loadingScreen matches 300 run scoreboard players set .screenTime loadingScreen 650

execute if score .screenTime loadingScreen matches 660.. run title @a actionbar {"text":"Initialize Completed - Starting Game","bold":true,"color":"green"}

execute if score .screenTime loadingScreen matches 700 run function core:2dlogic/start_game

scoreboard players set .leftScore gameDatabase 0
scoreboard players set .rightScore gameDatabase 0