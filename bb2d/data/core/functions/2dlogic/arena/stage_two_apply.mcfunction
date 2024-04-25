kill @e[tag=lobby2]
kill @e[type=minecraft:interaction]


tp @a[team=lobby] -122 8 -278 90 0
tp @a[team=left] 37 40 -262 90 0
tp @a[team=right] 37 40 -262 90 0

effect give @a minecraft:jump_boost infinite 255 true
effect give @a minecraft:slowness infinite 255 true
effect give @a minecraft:invisibility infinite 255 true
#effect give @a minecraft:blindness 1000000 255 true

execute as @a[team=left] run scoreboard players add .playerAmount gameDatabase 1
execute as @a[team=right] run scoreboard players add .playerAmount gameDatabase 1

#scoreboard players set .playerAmount gameDatabase 0
scoreboard players remove .counter playerID 1
scoreboard players remove @a[scores={playerID=2..}] playerID 1

function core:2dlogic/arena/make_map/empty
function core:2dlogic/arena/apply_map

scoreboard players set .time arenaTime 0
scoreboard players set .eventTimer arenaTime 0
scoreboard players set .eventCounter arenaTime 0
scoreboard players set .sortingTime sorterTime 0

