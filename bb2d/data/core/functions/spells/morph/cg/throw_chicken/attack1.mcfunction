## CPA : CHICKEN PROJECTILE ATTACK

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.5 ~-0.5 {Motion:[0.0,0.1,-0.4],Tags:["left","dir_right","cg_cpa"],Item:{id:"minecraft:cooked_chicken",Count:1b}}

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.5 ~0.5 {Motion:[0.0,0.1,0.4],Tags:["left","dir_left","cg_cpa"],Item:{id:"minecraft:cooked_chicken",Count:1b}}



execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.5 ~-0.5 {Motion:[0.0,0.1,-0.4],Tags:["right","dir_right","cg_cpa"],Item:{id:"minecraft:cooked_chicken",Count:1b}}

execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.5 ~0.5 {Motion:[0.0,0.1,0.4],Tags:["right","dir_left","cg_cpa"],Item:{id:"minecraft:cooked_chicken",Count:1b}}
