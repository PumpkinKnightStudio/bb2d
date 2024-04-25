## FALING METEOR


## TRIGGER EVERY TICK
scoreboard players set .triggerSetting event 100

scoreboard players operation .trigger event = .eventCounter arenaTime
scoreboard players operation .triggerResult event = .trigger event
scoreboard players operation .triggerResult event %= .triggerSetting event

execute if score .triggerResult event matches 1 run function core:2dlogic/arena/event/event_element/summon_meteor


## ACTIVE LOGIC ##
execute as @e[type=minecraft:falling_block,tag=meteor] at @s run execute align z positioned ~ ~ ~ run function core:2dlogic/arena/event/event_element/meteor_explode


## REMOVAL LOGIC ##


execute as @e[type=minecraft:falling_block,tag=meteor] at @s run execute unless block ~ ~-0.5 ~ air run kill @s
