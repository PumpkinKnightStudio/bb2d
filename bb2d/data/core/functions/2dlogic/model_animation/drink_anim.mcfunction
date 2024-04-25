scoreboard players add @s drink_anim 4


execute as @s[scores={playerID=1..,drink_anim=4..6}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {Pose:{RightArm:[221f,0f,0f],Head:[348f,0f,0f]}}
execute as @s[scores={playerID=1..,drink_anim=7..9}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {Pose:{RightArm:[245f,0f,0f],Head:[348f,0f,0f]}}

scoreboard players set @s[scores={drink_anim=10..}] drink_anim 3

