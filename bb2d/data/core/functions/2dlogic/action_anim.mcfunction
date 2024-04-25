function core:2dlogic/model_animation/shield_anim

#BOW ANIMATION

execute if score @s bow_aim matches 6.. run function core:2dlogic/model_animation/bow_anim

execute if score @s bow_aim matches 1.. run scoreboard players add @s bow_aim 1
execute if score @s bow_aim matches 40.. run scoreboard players set @s bow_aim 40

execute if score @s projectile_aim matches 1.. run function core:2dlogic/model_animation/projectile_anim

execute if score @s projectile_aim matches 1.. run scoreboard players add @s projectile_aim 1
execute if score @s projectile_aim matches 40.. run scoreboard players set @s projectile_aim 40

execute if score @s placing_block matches 1.. run function core:2dlogic/model_animation/place_anim

execute if score @s placing_block matches 1.. run scoreboard players remove @s placing_block 1

###### MAGIC CAST ######

execute if score @s magic_cast matches 6.. run function core:2dlogic/model_animation/cast_anim

execute if score @s magic_cast matches 1.. run scoreboard players add @s magic_cast 1
execute if score @s magic_cast matches 40.. run scoreboard players set @s magic_cast 40

########################

###### DRINKING ######
# LINK TO ADVANCEMENT - AUTO RESET
execute as @s[scores={playerID=1..,drink_anim=1..2}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if score @s drinkingPotion matches 1.. run function core:2dlogic/model_animation/drink_anim
scoreboard players remove @s[scores={drink_anim=1..}] drink_anim 1


########################

execute store result score @s element run data get entity @s SelectedItem.tag.element
execute store result score @s spell_id run data get entity @s SelectedItem.tag.spell_id

execute unless score @s mem_element = @s element run execute unless score @s mem_spellid = @s spell_id run scoreboard players set @s bow_aim -1
execute unless score @s mem_spellid = @s spell_id run scoreboard players set @s sword_swing 0
execute if score @s mem_element = @s element run execute unless score @s mem_spellid = @s spell_id run scoreboard players set @s bow_aim -1
execute unless score @s mem_spellid = @s spell_id run scoreboard players set @s magic_cast 0

execute unless score @s mem_element = @s element run scoreboard players operation @s mem_element = @s element

execute unless score @s mem_spellid = @s spell_id run scoreboard players operation @s mem_spellid = @s spell_id


#SWORD ANIMATION

execute unless score @s sword_swing matches 0 run function core:2dlogic/model_animation/sword_anim


execute unless score @s sword_swing matches 0 run function core:2dlogic/action_sword
execute if score @s sword_swing matches ..-1 run scoreboard players add @s sword_swing 1

#execute if score @s sword_swing matches 30.. run scoreboard players set @s sword_swing 30

##reset 

execute if score @s bow_aim matches -1 run function core:2dlogic/model_animation/reset
execute if score @s placing_block matches 1 run function core:2dlogic/model_animation/reset



