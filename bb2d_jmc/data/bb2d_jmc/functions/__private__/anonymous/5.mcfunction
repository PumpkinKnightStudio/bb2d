execute unless score $dm_triggered __variable__ matches 1.. if score @p[scores={damagerCD=..240,damagerID2=0..}] damagerID = @s playerID if entity @s[type=player] run function bb2d_jmc:__private__/anonymous/3
scoreboard players operation $main_attacker __variable__ = @p damagerID
execute if score @p[scores={damagerCD=241..}] damagerID = @s playerID unless score $dm_triggered __variable__ matches 1.. if entity @s[type=player] run function bb2d_jmc:__private__/anonymous/4
execute if score @p damagerID2 = @s playerID run function bb2d_jmc:__private__/if_else/24
execute if score @p damagerID = @s playerID if entity @s[type=player] run function core:2dlogic/arena/death_link
execute if score @p duiMemory matches 1.. if entity @s[type=player] run function bb2d_jmc:respawn_util/duimessage
execute if entity @s[type=player] run function bb2d_jmc:respawn_util/extra_obj