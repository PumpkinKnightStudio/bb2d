
execute as @s[team=right] at @s run execute as @a[team=left] run scoreboard players set #entity_mot_z nexus.value 1000
execute as @s[team=left] at @s run execute as @a[team=right] run scoreboard players set #entity_mot_z nexus.value -1000

execute as @s[team=right] at @s run execute as @a[team=left] run function nexus:player/launch/apply/vector
execute as @s[team=left] at @s run execute as @a[team=right] run function nexus:player/launch/apply/vector

execute as @s[team=right] at @s run execute as @a[team=left] run scoreboard players set @s duiMemory 2
execute as @s[team=left] at @s run execute as @a[team=right] run scoreboard players set @s duiMemory 2

execute as @s[team=left] at @s run scoreboard players operation @a[team=right] damagerID = @s playerID
execute as @s[team=right] at @s run scoreboard players operation @a[team=left] damagerID = @s playerID
