
execute if score @s playerID = @p[scores={damage=0,magic_cast=1..}] playerID run execute as @s run data merge entity @s {ShowArms:1b,Pose:{Head:[338f,0f,0f],LeftArm:[243f,41f,0f],RightArm:[280f,0f,0f]}}


execute if score @s shieldSlot matches 2 run execute if score @s magic_cast matches 6.. run item replace entity @s[type=armor_stand] weapon.offhand with shield{CustomModelData:10009}


