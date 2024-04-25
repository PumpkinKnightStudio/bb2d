## TEAM LEFT



execute store result score @s swordDam run data get entity @s SelectedItem.tag.damage
execute store result score @s attackStun run data get entity @s SelectedItem.tag.stun

execute if score @s sword_swing matches 1..7 run scoreboard players operation @s swordDam /= .dev2 swordDam

execute if score @s sword_swing matches 15..29 run scoreboard players operation @s swordDam *= .mul2 swordDam

execute if score @s sword_swing matches 30.. run scoreboard players operation @s swordDam *= .mul3 swordDam






## DIVIDED BY 100
scoreboard players operation @s[scores={swordDam=100..}] swordDam /= .cal swordDam

scoreboard players operation @s motionApplier = @s swordDam
scoreboard players operation @s motionApplier /= .motionDivider motionBack


execute if score @s lookingDir matches 2 run scoreboard players operation @s motionApplier *= .negative motionBack


##### APPLY STUN ######
scoreboard players operation @s stunApplier = @s attackStun
scoreboard players operation @s stunNegate = .swordSwingMax stunNegate
scoreboard players operation @s stunNegate -= @s sword_swing
execute if score @s stunNegate matches ..0 run scoreboard players set @s stunNegate 0
scoreboard players operation @s stunApplier -= @s stunNegate
execute if score @s stunApplier matches ..0 run scoreboard players set @s stunApplier 0

#######################################

execute as @s at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s at @s run function core:spells/physical/sword/attack_impact