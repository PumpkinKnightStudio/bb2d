## UPDATE-8.1
#scoreboard players set @s[scores={impactCooldown=..1}] impactCooldown -10000

execute store result score @s holdingItemID run data get entity @s SelectedItem.tag.item

execute store result score @s holdingBlock run data get entity @s SelectedItem.tag.block

execute store result score @s holdingActionID run data get entity @s SelectedItem.tag.abilityTool

execute as @s[type=player] run function core:2dlogic/item_announce

execute unless predicate core:offhand_item run execute at @s run function core:2dlogic/item_switcher

function core:2dlogic/advancement

## STOP ANIMATION WHEN SHIELD IS ACTIVE
function core:2dlogic/action_check


execute if score .usePlayerLimiter SystemSetting matches 1 run scoreboard players add .oneCounter arenaTime 1
execute if score .usePlayerLimiter SystemSetting matches 0 run execute at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s run function core:2dlogic/player_model_redux
execute if score .usePlayerLimiter SystemSetting matches 1 run execute if score .oneCounter arenaTime matches 2.. run execute as @s[type=player] as @e[scores={playerID=1},type=#core:playerid_link] at @s run function core:2dlogic/player_model_redux
execute if score .usePlayerLimiter SystemSetting matches 1 run execute if score .oneCounter arenaTime matches 2.. run function core:2dlogic/playerlink

#execute as @s[scores={damage=1..}] at @s as @e if score @s playerID = @p playerID run execute as @s run function core:2dlogic/model_animation/impact_pose



# NID 7
function core:2dlogic/player_damage_redux





scoreboard players set @s inAction 0
scoreboard players remove @s[scores={switchingItem=1..}] switchingItem 1
execute if score .usePlayerLimiter SystemSetting matches 1 run execute if score .oneCounter arenaTime matches 2.. run scoreboard players set .oneCounter arenaTime 0