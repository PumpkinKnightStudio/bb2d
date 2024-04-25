

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon minecraft:arrow ~-0.9 ~1.5 ~-0.5 {damage:1d,Motion:[0.0,0.2,-0.2],Tags:["left","dir_right"]}

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon minecraft:arrow ~-0.9 ~1.5 ~0.5 {damage:1d,Motion:[0.0,0.2,0.2],Tags:["left","dir_left"]}



execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon minecraft:arrow ~-0.9 ~1.5 ~-0.5 {damage:1d,Motion:[0.0,0.2,-0.2],Tags:["right","dir_right"]}

execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon minecraft:arrow ~-0.9 ~1.5 ~0.5 {damage:1d,Motion:[0.0,0.2,0.2],Tags:["right","dir_left"]}
