

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon minecraft:arrow ~-0.9 ~1.5 ~-0.5 {damage:2.5d,Motion:[0.0,0.3,-0.35],Tags:["left","dir_right"]}

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon minecraft:arrow ~-0.9 ~1.5 ~0.5 {damage:2.5d,Motion:[0.0,0.3,0.35],Tags:["left","dir_left"]}



execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon minecraft:arrow ~-0.9 ~1.5 ~-0.5 {damage:2.5d,Motion:[0.0,0.3,-0.35],Tags:["right","dir_right"]}

execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon minecraft:arrow ~-0.9 ~1.5 ~0.5 {damage:2.5d,Motion:[0.0,0.3,0.35],Tags:["right","dir_left"]}
