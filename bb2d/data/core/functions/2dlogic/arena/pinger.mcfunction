

execute if score .sortingTime sorterTime matches ..49 run scoreboard players add .sortingTime sorterTime 1
execute if score .playerAmount gameDatabase matches 1.. run execute if score .sortingTime sorterTime matches 20 run function core:2dlogic/arena/pinger_apply
execute if score .sortingTime sorterTime matches 2 run tellraw @a {"text":"Loading Game Database (Player Data)"}
#execute if score .playerLoad runOnce matches 0 run execute if score .sortingTime sorterTime matches 35 run scoreboard players operation @e[tag=locator_ping] playerID_Pinger = .playerAmount gameDatabase
execute if score .playerLoad runOnce matches 0 run execute if score .sortingTime sorterTime matches 2 run execute store result score .playerAmount gameDatabase run execute if entity @a[scores={playerID=1..}]
execute if score .playerLoad runOnce matches 0 run execute if score .sortingTime sorterTime matches 2 run scoreboard players remove @a playerID 1

execute if score .sortingTime sorterTime matches 37 run scoreboard players set .playerLoad runOnce 1
execute if score .playerAmount gameDatabase matches 1.. run execute if score .sortingTime sorterTime matches 1 run title @a title {"text":"Loading","color":"#f0f078"}
execute if score .playerAmount gameDatabase matches 1.. run execute if score .sortingTime sorterTime matches 1 run execute if score .type gameType matches 1 run title @a subtitle {"text":"Playing: Team Score","color":"#f0f074"}
execute if score .playerAmount gameDatabase matches 1.. run execute if score .sortingTime sorterTime matches 1 run execute if score .type gameType matches 2 run title @a subtitle {"text":"Playing: Team Death Match","color":"#f0f074"}
execute if score .playerAmount gameDatabase matches 1.. run execute if score .sortingTime sorterTime matches 1 run execute if score .type gameType matches 3 run title @a subtitle {"text":"Playing: Domination","color":"#f0f074"}
execute if score .playerAmount gameDatabase matches 1.. run execute if score .sortingTime sorterTime matches 1 run execute if score .type gameType matches 4 run title @a subtitle {"text":"Playing: Infection","color":"#f0f078"}

#execute if score .playerAmount gameDatabase matches 1.. run execute if score .sortingTime sorterTime matches 49 run execute as @a at @s as @e if score @s playerID_Pinger = @p playerID run execute as @s at @s run execute as @p run tp @s tp @p -113 31 -238

execute if score .sortingTime sorterTime matches 50 run scoreboard players set .sortingTime sorterTime 5

#execute if score .playerAmount gameDatabase matches 0 run execute if score .screenTime loadingScreen matches 0 run scoreboard players set .screenTime loadingScreen 1

execute if score .sortingTime sorterTime matches 48 run execute if score .playerAmount gameDatabase matches 1.. run scoreboard players remove @e[tag=locator_ping] playerID_Pinger 1
execute if score .sortingTime sorterTime matches 49 run execute if score .playerAmount gameDatabase matches 0 run execute if score .screenTime loadingScreen matches 0 run scoreboard players set .screenTime loadingScreen 2



