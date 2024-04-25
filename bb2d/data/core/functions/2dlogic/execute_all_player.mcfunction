execute if entity @s[tag=!headlock] run execute unless score @s impactCooldown matches 0 run function core:2dlogic/coor_patch

execute if entity @s[tag=!headlock] run execute if score @s impactCooldown matches 0 run execute if score @s shieldOn matches 0 run function core:2dlogic/coor

execute if score @s impactCooldown matches 0.. run function core:2dlogic/damage_interceptor/cooldown

execute at @s[scores={dropPressed=1}] run function core:2dlogic/arena/item_control
execute at @s[scores={droppedShield=1..}] run function core:2dlogic/arena/item_control
execute if entity @s[scores={droppedBlock=0}] run function core:2dlogic/arena/item_give



execute at @s as @e[type=#core:playerid_link_all] if score @s playerID = @p playerID run function core:2dlogic/score_share

execute if score @s impactCooldown matches 3.. run execute if score @s stunted matches 1.. run execute if score @s stunt_immune matches 0 run effect give @s minecraft:slowness 1 5 true
execute if score @s impactCooldown matches 2 run effect clear @s minecraft:slowness
#execute if score @s impactCooldown matches -10000 run effect give @s minecraft:slowness 1 1 true

function core:menu/run
function core:2dlogic/particle_runner
function core:2dlogic/action_canceller
function core:2dlogic/action_bar

function core:2dlogic/ability_tool



#execute as @s at @s run tp @s ~ ~ ~ 90 0
execute at @s run execute unless score @s rotation1 matches 90 run tp @s ~ ~ ~ 90 0
execute at @s run execute unless score @s rotation2 matches 0 run tp @s ~ ~ ~ 90 0

scoreboard players remove @s[scores={spellMsg=1..}] spellMsg 1
scoreboard players remove @s[scores={dodgeTimer=1..}] dodgeTimer 1

scoreboard players set @s[scores={globalSoundRandom=4..}] globalSoundRandom 0
scoreboard players add @s globalSoundRandom 1

execute as @s run execute if score @s damagerID2 matches 0.. run scoreboard players add @s dmgID2_Timer 1
execute as @s run execute if score @s dmgID2_Timer matches 240 run scoreboard players operation @s damagerID = @s damagerID2
execute as @s run execute if score @s dmgID2_Timer matches 240 run scoreboard players reset @s damagerID2
execute as @s run execute if score @s dmgID2_Timer matches 240.. run scoreboard players set @s dmgID2_Timer 0

function core:2dlogic/arena/effect_applier


effect give @s minecraft:saturation 2 10 true

## UPDATE 8.1

execute as @e at @s run function core:2dlogic/execute_entity

