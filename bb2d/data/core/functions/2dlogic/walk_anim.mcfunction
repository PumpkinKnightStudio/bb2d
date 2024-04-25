execute if score @s walking matches 1.. run execute if score @s walkingAnimC matches 0 run scoreboard players set @s walkingAnimC 2
execute if score @s walkingAnimC matches 1.. run scoreboard players remove @s walkingAnimC 1

execute if score @s walkingAnim matches 0 run execute if score @s walkingAnimC matches 1.. run scoreboard players set @s walkingAnim 12

execute if score @s walkingAnimC matches 0 run execute if score @s walkingAnim matches 1.. run scoreboard players remove @s walkingAnim 1

execute if score @s walkingAnim matches 1 run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}

execute if score @s walkingAnim matches 2 run data merge entity @s {Pose:{LeftLeg:[11f,0f,0f],RightLeg:[350f,0f,0f]}}

execute if score @s walkingAnim matches 3 run data merge entity @s {Pose:{LeftLeg:[28f,0f,0f],RightLeg:[330f,0f,0f]}}

execute if score @s walkingAnim matches 4 run data merge entity @s {Pose:{LeftLeg:[48f,0f,0f],RightLeg:[315f,0f,0f]}}

execute if score @s walkingAnim matches 5 run data merge entity @s {Pose:{LeftLeg:[28f,0f,0f],RightLeg:[330f,0f,0f]}}

execute if score @s walkingAnim matches 6 run data merge entity @s {Pose:{LeftLeg:[11f,0f,0f],RightLeg:[350f,0f,0f]}}

execute if score @s walkingAnim matches 7 run data merge entity @s {Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}

execute if score @s walkingAnim matches 8 run data merge entity @s {Pose:{LeftLeg:[350f,0f,0f],RightLeg:[11f,0f,0f]}}

execute if score @s walkingAnim matches 9 run data merge entity @s {Pose:{LeftLeg:[330f,0f,0f],RightLeg:[28f,0f,0f]}}

execute if score @s walkingAnim matches 10 run data merge entity @s {Pose:{LeftLeg:[315f,0f,0f],RightLeg:[48f,0f,0f]}}

execute if score @s walkingAnim matches 11 run data merge entity @s {Pose:{LeftLeg:[330f,0f,0f],RightLeg:[28f,0f,0f]}}

execute if score @s walkingAnim matches 12 run data merge entity @s {Pose:{LeftLeg:[350f,0f,0f],RightLeg:[11f,0f,0f]}}

execute if score @s walking matches 0 run execute if score @s walkingAnim matches 5.. run scoreboard players set @s walkingAnim 4
