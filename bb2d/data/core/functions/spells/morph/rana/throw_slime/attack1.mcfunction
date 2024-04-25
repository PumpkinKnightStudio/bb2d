## CPA : CHICKEN PROJECTILE ATTACK

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.2 ~-0.5 {Motion:[0.0,0.05,-0.5],Tags:["left","dir_right","rana_slime","unset"],Item:{id:"minecraft:slime_ball",Count:1b}}

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.2 ~0.5 {Motion:[0.0,0.05,0.5],Tags:["left","dir_left","rana_slime","unset"],Item:{id:"minecraft:slime_ball",Count:1b}}



execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.2 ~-0.5 {Motion:[0.0,0.05,-0.5],Tags:["right","dir_right","rana_slime","unset"],Item:{id:"minecraft:slime_ball",Count:1b}}

execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.2 ~0.5 {Motion:[0.0,0.05,0.5],Tags:["right","dir_left","rana_slime","unset"],Item:{id:"minecraft:slime_ball",Count:1b}}

execute as @s[team=left] run scoreboard players operation @e[tag=unset,tag=rana_slime,tag=left,limit=1] damagerID = @s playerID
execute as @s[team=right] run scoreboard players operation @e[tag=unset,tag=rana_slime,tag=right,limit=1] damagerID = @s playerID

tag @e[type=snowball,tag=unset,tag=rana_slime] remove unset
