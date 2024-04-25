function bb2d_jmc:respawn_util/deathmessage
function bb2d_jmc:respawn_util/deathbenefit
scoreboard players set @s killStreak 0
scoreboard players add @s deathCount 1
summon block_display ~-20 -9 ~-6 {Tags:["eliminate"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[11f,11f,11f]},block_state:{Name:"minecraft:brown_stained_glass"}}
playsound minecraft:entity.blaze.death master @a ~ ~10 ~ 1 1.9
scoreboard players set @s damagerID 0
scoreboard players set @s health 0
scoreboard players set @s fallChanceT 0
scoreboard players set @s damagerCD 0
scoreboard players set @s duiMemory 0
scoreboard players set @s duiCanceller -1
scoreboard players set @s damagerID2 0
scoreboard players set @s friendlyFireID 0
scoreboard players set @s effect.poison 0
execute if score .type gameType matches 2 run function bb2d_jmc:__private__/if_else/11
execute if score .type gameType matches 4 run function bb2d_jmc:__private__/if_else/12
function core:2dlogic/arena/func_respawn