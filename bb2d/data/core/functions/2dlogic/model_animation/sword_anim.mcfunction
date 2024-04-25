execute as @s[scores={playerID=1..,sword_swing=1..14}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[4f,0f,0f],RightLeg:[357f,0f,0f],RightArm:[323f,0f,0f]}}
execute as @s[scores={playerID=1..,sword_swing=15..29}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[5f,0f,0f],RightLeg:[338f,0f,0f],RightArm:[245f,0f,0f]}}

execute as @s[scores={playerID=1..,sword_swing=30..}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[8f,0f,0f],RightLeg:[317f,0f,0f],RightArm:[118f,0f,0f]}}



execute as @s[scores={playerID=1..,sword_swing=-2..-1}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

execute as @s[scores={playerID=1..,sword_swing=-5..-3}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[4f,0f,0f],RightLeg:[357f,0f,0f],RightArm:[323f,0f,0f]}}

execute as @s[scores={playerID=1..,sword_swing=-8..-6}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[5f,0f,0f],RightLeg:[338f,0f,0f],RightArm:[245f,0f,0f]}}

execute as @s[scores={playerID=1..,sword_swing=..-9}] at @s as @e if score @s playerID = @p playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[8f,0f,0f],RightLeg:[317f,0f,0f],RightArm:[118f,0f,0f]}}