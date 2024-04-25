execute if score @s shieldSlot matches 2 run execute if score @s inAction matches 0 run execute if score @s shieldOn matches 7.. run data merge entity @s {ShowArms:1b,Pose:{LeftArm:[284f,51f,8f]}}


execute if score @s shieldSlot matches 1 run execute if score @s inAction matches 0 run execute if score @s shieldOn matches 7.. run data merge entity @s {ShowArms:1b,Pose:{RightArm:[293f,291f,0f]}}

execute if score @s shieldSlot matches 2 run execute if score @s shieldOn matches 1..2 run data merge entity @s {ShowArms:1b,Pose:{LeftArm:[0f,0f,0f]}}

execute if score @s shieldSlot matches 1 run execute if score @s shieldOn matches 1..2 run data merge entity @s {ShowArms:1b,Pose:{RightArm:[0f,0f,0f]}}