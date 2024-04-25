

execute as @s[scores={playerID=1..,lookingDir=1},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.5 ~-0.5 {Motion:[0.0,0.35,-0.55],Tags:["left","dir_right","ink","noMotion"],Item:{id:"minecraft:ink_sac",Count:1b}}

execute as @s[scores={playerID=1..,lookingDir=2},team=left] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.5 ~0.5 {Motion:[0.0,0.35,0.55],Tags:["left","dir_left","ink","noMotion"],Item:{id:"minecraft:ink_sac",Count:1b}}



execute as @s[scores={playerID=1..,lookingDir=1},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~0.75 ~1.5 ~-0.5 {Motion:[0.0,0.35,-0.55],Tags:["right","dir_right","ink","noMotion"],Item:{id:"minecraft:ink_sac",Count:1b}}

execute as @s[scores={playerID=1..,lookingDir=2},team=right] at @s as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:armor_stand] at @s run summon snowball ~-0.75 ~1.5 ~0.5 {Motion:[0.0,0.35,0.55],Tags:["right","dir_left","ink","noMotion"],Item:{id:"minecraft:ink_sac",Count:1b}}

execute as @e[type=snowball,tag=noMotion] at @s run function core:spells/physical/projectile/motion_applier
execute as @e[type=snowball,tag=noMotion] at @s run function core:spells/physical/projectile/motion_applier

scoreboard players set @s projectile_aim 0