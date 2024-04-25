execute as @a[scores={playerID=1..,placing_block=1..2}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{RightArm:[311f,10f,0f]}}

execute as @a[scores={playerID=1..,placing_block=3..4}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{RightArm:[257f,32f,0f]}}

execute as @a[scores={playerID=1..,placing_block=5}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{RightArm:[237f,46f,0f]}}


