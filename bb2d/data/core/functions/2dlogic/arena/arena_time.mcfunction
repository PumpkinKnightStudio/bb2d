scoreboard players add .time arenaTime 1
# Team Death Match
execute if score .type gameType matches 2 run scoreboard players add .time arenaTime 1
# Infection
#execute if score .type gameType matches 4 run scoreboard players add .time arenaTime 1

scoreboard players add .coinsGive arenaTime 1
execute store result score .gametime arenaTime run time query gametime

#execute if score .eventRec arenaTime <= .event arenaTime run scoreboard players add .eventTimer arenaTime 1

## UPDATE CUSTOM EVENT ROUND TRIGGER TIME
scoreboard players operation .eventTrig arenaTime = .event arenaTime
scoreboard players operation .eventTrig arenaTime -= .two arenaTime

#execute if score .eventTimer arenaTime >= .event arenaTime run scoreboard players set .eventCounter 0

## RENABLE FOR EVENT
#execute if score .eventCounter arenaTime matches 0 run scoreboard players add .eventTimer arenaTime 1

execute if score .eventRec arenaTime = .eventTrig arenaTime run say starting event

execute if score .eventCounter arenaTime >= .eventCounterMax arenaTime run scoreboard players add .eventTimer arenaTime 1

execute if score .eventCounter arenaTime >= .eventCounterMax arenaTime run scoreboard players set .eventCounter arenaTime 0


scoreboard players operation .timeRec arenaTime = .time arenaTime
scoreboard players operation .timeRec arenaTime %= .nine arenaTime

scoreboard players operation .eventRec arenaTime = .eventTimer arenaTime
scoreboard players operation .eventRec arenaTime %= .event arenaTime

execute if score .eventRec arenaTime matches 1499.. run scoreboard players add .eventCounter arenaTime 1

execute if score .eventRec arenaTime matches 1 run say ending event

### COINS ###

execute if score .coinsGive arenaTime >= .coinsTrigger arenaTime run scoreboard players add @a coins 15
execute if score .coinsGive arenaTime >= .coinsTrigger arenaTime run tellraw @a [{"text":"+15 coins","color":"gold"}]
execute if score .coinsGive arenaTime >= .coinsTrigger arenaTime run scoreboard players set .coinsGive arenaTime 0

### ARENA MAX TIME ###
execute if score .time arenaTime >= .arenaMaxTime arenaTime run scoreboard players set .musicNum musicBoard 3


execute if score .timeRec arenaTime matches 8 run execute as @a[scores={health=..-800}] at @s run function core:2dlogic/arena/player_heat

## TICK EXECUTION
function core:2dlogic/arena/middle_flag
scoreboard players remove @e[type=armor_stand,tag=req_delete] req_delete 1
kill @e[type=armor_stand,tag=req_delete,scores={req_delete=0}]
execute as @a run execute unless score @s damagerID matches 0 run scoreboard players add @s damagerCD 1
scoreboard players set @a[scores={damagerID=1..,damagerCD=400..}] damagerID 0
scoreboard players add @a[scores={damagerCD=1..}] damagerCD 1
scoreboard players set @a[scores={damagerCD=400..}] damagerID 0
scoreboard players set @a[scores={damagerCD=400..}] damagerCD 0

function core:2dlogic/morph/extra/orc_axe

execute as @a[scores={playerID=1..,lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e[type=#core:playerid_link_all] if score @s petsID = @p playerID run execute as @s[tag=petModel] align x run tp @s ~-10 ~1 ~-0.8 0 0
execute as @a[scores={playerID=1..,lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e[type=#core:playerid_link_all] if score @s petsID = @p playerID run execute as @s[tag=petModel] align x run tp @s ~-10 ~1 ~0.8 180 0

#execute as @a at @s as @e if score @s obj.clockID = @s[type=armor_stand] playerID run scoreboard players set @s[tag=model] chr.abi3.cd 400