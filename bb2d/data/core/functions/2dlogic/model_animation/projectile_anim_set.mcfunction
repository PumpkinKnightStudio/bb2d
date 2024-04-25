execute if score @s playerID = @p[scores={damage=0,projectile_aim=1..3}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[8f,0f,0f],RightLeg:[345f,0f,0f],LeftArm:[341f,0f,0f],RightArm:[320f,0f,0f]}}

execute if score @s playerID = @p[scores={damage=0,projectile_aim=4..6}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[8f,0f,0f],RightLeg:[345f,0f,0f],LeftArm:[341f,0f,0f],RightArm:[280f,0f,0f]}}

execute if score @s playerID = @p[scores={damage=0,projectile_aim=7..9}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[8f,0f,0f],RightLeg:[345f,0f,0f],LeftArm:[341f,0f,0f],RightArm:[220f,0f,0f]}}



execute if score @s playerID = @p[scores={damage=0,projectile_aim=10..12}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{LeftLeg:[8f,0f,0f],RightLeg:[345f,0f,0f],LeftArm:[341f,0f,0f],RightArm:[159f,0f,0f]}}

execute if score @s useCustomHead matches 0 run execute if score @s playerID = @p[scores={damage=0,projectile_aim=13..25}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[348f,0f,0f],LeftLeg:[9f,0f,0f],RightLeg:[340f,0f,0f],LeftArm:[330f,0f,0f],RightArm:[138f,0f,0f]}}

execute if score @s useCustomHead matches 0 run execute if score @s playerID = @p[scores={damage=0,projectile_aim=26..}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[333f,0f,0f],LeftLeg:[9f,0f,0f],RightLeg:[336f,0f,0f],LeftArm:[294f,0f,0f],RightArm:[130f,0f,0f]}}

execute if score @s useCustomHead matches 1 run execute if score @s playerID = @p[scores={damage=0,projectile_aim=13..25}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[0f,0f,0f],LeftLeg:[9f,0f,0f],RightLeg:[340f,0f,0f],LeftArm:[330f,0f,0f],RightArm:[138f,0f,0f]}}

execute if score @s useCustomHead matches 1 run execute if score @s playerID = @p[scores={damage=0,projectile_aim=26..}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[0f,0f,0f],LeftLeg:[9f,0f,0f],RightLeg:[336f,0f,0f],LeftArm:[294f,0f,0f],RightArm:[130f,0f,0f]}}
