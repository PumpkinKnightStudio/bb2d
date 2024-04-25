execute at @s[tag=left,tag=ink] run function core:2dlogic/damage_interceptor/ink_hit_right

execute at @s[tag=right,tag=ink] run function core:2dlogic/damage_interceptor/ink_hit_left



execute at @s[tag=left,tag=cg_cpa] run execute as @e[team=right,type=armor_stand,distance=..5,limit=1,sort=nearest] at @s as @e if score @s playerID = @p[team=right] playerID run execute as @s[type=player,team=right] run function core:2dlogic/damage_interceptor/cg_cpa_hit_right

execute at @s[tag=right,tag=cg_cpa] run execute as @e[team=left,type=armor_stand,distance=..5,limit=1,sort=nearest] at @s as @e if score @s playerID = @p[team=left] playerID run execute as @s[type=player,team=left] run function core:2dlogic/damage_interceptor/cg_cpa_hit_left

execute at @s[tag=left,tag=tamer_net] run execute as @e[team=right,type=armor_stand,distance=..4.5,limit=1,sort=nearest] at @s as @e if score @s playerID = @p[team=right] playerID run execute as @s[type=player,team=right] run function core:2dlogic/damage_interceptor/tamer_net_hit_right

execute at @s[tag=right,tag=tamer_net] run execute as @e[team=left,type=armor_stand,distance=..4.5,limit=1,sort=nearest] at @s as @e if score @s playerID = @p[team=left] playerID run execute as @s[type=player,team=left] run function core:2dlogic/damage_interceptor/tamer_net_hit_left



execute at @s[tag=left,tag=rana_slime] run function core:2dlogic/damage_interceptor/slime_hit_right

execute at @s[tag=right,tag=rana_slime] run function core:2dlogic/damage_interceptor/slime_hit_left



kill @s