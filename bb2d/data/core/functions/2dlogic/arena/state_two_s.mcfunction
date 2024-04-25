execute if score .screenTime loadingScreen matches 0 run title @a actionbar [{"text":"Assigning Player to the game.","color":"#f0f074"}]



execute as @a run execute unless score @s playerID matches 1.. run execute as @s[team=left] run function core:setup/assign_id
execute as @a run execute unless score @s playerID matches 1.. run execute as @s[team=right] run function core:setup/assign_id

#execute as @a run execute if score @s playerID >= .playerAmount gameDatabase run scoreboard players operation .playerAmount gameDatabase = @s playerID



execute unless entity @e[tag=locator_ping] run summon armor_stand 28 17 -262 {Tags:["locator_ping"]}


function core:2dlogic/arena/pinger


execute if score .screenID loadingScreen matches 1 run execute if score .screenTime loadingScreen matches 1..721 run scoreboard players add .screenTime loadingScreen 1
execute if score .screenID loadingScreen matches 1 run execute if score .screenTime loadingScreen matches 1.. run function core:2dlogic/arena/loading_screen/load_credit

execute if score .screenID loadingScreen matches 2 run execute if score .screenTime loadingScreen matches 1..700 run scoreboard players add .screenTime loadingScreen 1
execute if score .screenID loadingScreen matches 2 run execute if score .screenTime loadingScreen matches 1..700 run function core:2dlogic/arena/loading_screen/load_map
