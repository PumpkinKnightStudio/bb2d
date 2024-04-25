execute if score @s playerID = @p[scores={damage=0,bow_aim=1..12}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[353f,0f,0f],LeftArm:[286f,39f,0f],RightArm:[281f,0f,0f]}}

execute if score @s playerID = @p[scores={damage=0,bow_aim=13..25}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[343f,0f,0f],LeftArm:[261f,41f,0f],RightArm:[264f,0f,0f]}}

execute if score @s playerID = @p[scores={damage=0,bow_aim=26..}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[338f,0f,0f],LeftArm:[243f,41f,0f],RightArm:[237f,0f,0f]}}


execute if score @s shieldSlot matches 2 run execute if score @s bow_aim matches 6..12 run item replace entity @s[type=armor_stand] weapon.offhand with shield{CustomModelData:10007}

execute if score @s shieldSlot matches 2 run execute if score @s bow_aim matches 13..25 run item replace entity @s[type=armor_stand] weapon.offhand with shield{CustomModelData:10008}

execute if score @s shieldSlot matches 2 run execute if score @s bow_aim matches 26.. run item replace entity @s[type=armor_stand] weapon.offhand with shield{CustomModelData:10009}



execute if score @s bow_aim matches 6..12 run function core:2dlogic/model_animation/bow_assign_1

execute if score @s bow_aim matches 13..25 run function core:2dlogic/model_animation/bow_assign_2

execute if score @s bow_aim matches 26.. run function core:2dlogic/model_animation/bow_assign_3