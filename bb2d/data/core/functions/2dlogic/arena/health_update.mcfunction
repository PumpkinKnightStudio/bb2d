scoreboard players add .twoCounter arenaTime 1

execute if score .twoCounter arenaTime matches 5 run scoreboard players add .healthUpdID healthUpdTick 1
execute if score .healthUpdID healthUpdTick > .playingAmount playingCounter run scoreboard players set .healthUpdID healthUpdTick 1


execute if score .twoCounter arenaTime matches 5 run scoreboard players set .twoCounter arenaTime 0
