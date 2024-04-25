

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~ ~1.5 ~-0.5 {Motion:[0.0,0.2,-0.2],Tags:["left","dir_right","ink"],Item:{id:"minecraft:ink_sac",Count:1b}}

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~ ~1.5 ~0.5 {Motion:[0.0,0.2,0.2],Tags:["left","dir_left","ink"],Item:{id:"minecraft:ink_sac",Count:1b}}



execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~ ~1.5 ~-0.5 {Motion:[0.0,0.2,-0.2],Tags:["right","dir_right","ink"],Item:{id:"minecraft:ink_sac",Count:1b}}

execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~ ~1.5 ~0.5 {Motion:[0.0,0.2,0.2],Tags:["right","dir_left","ink"],Item:{id:"minecraft:ink_sac",Count:1b}}
