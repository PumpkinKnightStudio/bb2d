function core:spells/main

function core:2dlogic/lockz

execute store result score .playingAmount playingCounter run execute if entity @a[scores={playerID=1..}]
execute as @e[tag=aiMob] run scoreboard players add .playingAmount playingCounter 1

execute as @a run function core:2dlogic/execute_all

execute as @a run execute if score @s duiCanceller matches -1 run execute if score @s duiMemory matches 0 run scoreboard players set @s[type=player] duiCanceller 0
execute as @a run execute if score @s duiCanceller matches -1 run scoreboard players set @s[type=player] duiMemory 0


execute as @e[tag=nexus.entity] run function core:2dlogic/motion_detect
execute as @e[type=minecraft:block_display,scores={playerID=1..}] run function core:2dlogic/motion_detect

execute as @e[type=tnt] run execute store result score @s tntExplodeTime run data get entity @s fuse
execute as @e[type=tnt] at @s if score @s tntExplodeTime matches 1 run execute positioned ~9 ~ ~ run scoreboard players operation @a[distance=..3] damagerID2 = @s damagerID2
execute as @e[type=tnt] at @s if score @s tntExplodeTime matches 1 run execute positioned ~9 ~ ~ run scoreboard players operation @a[distance=..3] damagerID = @s damagerID

# SELF HARM DETECT
execute as @e[type=tnt,tag=left] at @s if score @s tntExplodeTime matches 1 run execute positioned ~9 ~ ~ run scoreboard players set @a[team=left,distance=..3] friendlyFireID 1
execute as @e[type=tnt,tag=right] at @s if score @s tntExplodeTime matches 1 run execute positioned ~9 ~ ~ run scoreboard players set @a[team=right,distance=..3] friendlyFireID 1

execute as @e[tag=nexus.entity,scores={walking=1..}] run tag @s add walked
execute as @e[tag=nexus.entity,tag=walked] at @s run execute unless block ~ ~ ~ air run tp @s ~ ~2 ~

execute as @e[tag=nexus.entity,tag=walked,scores={walking=0}] run kill @s

#execute as @a[scores={walking=0}] run execute unless block ~ ~-1 ~ air run execute as @s run ride @p dismount

execute as @a[scores={playerID=1..}] at @s as @e if score @s motionID = @p motionID run execute as @s run ride @p mount @s[tag=nexus.entity,type=minecraft:armor_stand]

execute as @e[tag=nexus.entity,scores={yLoc=..-1}] run kill @s
#execute as @e[tag=nexus.entity,type=minecraft:armor_stand] run execute if predicate core:player_respawn run kill @s


execute as @a[scores={useCustomHead=12}] run execute as @s run function core:2dlogic/morph/devast_addon/state_5a
execute as @e[type=armor_stand] at @s run function core:2dlogic/arena/armor_stand_check
function core:2dlogic/sneak_detect

function core:2dlogic/lock_move
function core:2dlogic/player_model


execute as @e[type=arrow] run function core:2dlogic/damage_interceptor/main
execute as @e[type=snowball] run function core:2dlogic/damage_interceptor/snowball

function core:2dlogic/arena/health_update



function core:2dlogic/arena/clone

function core:2dlogic/arena/data_transfer

function core:2dlogic/builder/core

function core:2dlogic/arena/barrier
function core:2dlogic/arena/phantom

function core:2dlogic/arena/temp_message

function core:2dlogic/damage_interceptor/fall
function core:2dlogic/arena/fall_re
function core:2dlogic/player_status

function core:2dlogic/arena/item_pickup
function core:2dlogic/arena/kill_entity


function core:2dlogic/arena/arena_time
function core:2dlogic/arena/event/event_random
function core:2dlogic/arena/element/sorter

execute if score .type gameType matches 1 run function core:2dlogic/arena/check_base
execute if score .type gameType matches 2 run function core:2dlogic/arena/check_deathmatch
execute if score .type gameType matches 3 run function core:2dlogic/arena/check_domination
execute if score .type gameType matches 4 run function core:2dlogic/arena/check_infection

