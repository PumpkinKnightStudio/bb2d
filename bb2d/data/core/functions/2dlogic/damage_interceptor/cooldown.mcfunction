scoreboard players remove @s[scores={impactCooldown=1..}] impactCooldown 1

# BETA 2 CHANGES
#data merge entity @s[scores={impactCooldown=-9999..1}] {ShowArms:1b,Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}


## PATCH FIX ARMORSTAND STUCK AT 0
#scoreboard players set @e[scores={impactCooldown=0}] impactCooldown -9998
##################################

#scoreboard players set @s[scores={impactCooldown=..1}] impactCooldown -10000
