scoreboard players set @s dealingDMG 20
scoreboard players operation @s dmgDealCal = @s dmgAddition
scoreboard players operation @s dmgDealCal *= @s dealingDMG
scoreboard players operation @s dmgDealCal /= .100 dmgDealCal
scoreboard players operation @s dealingDMG += @s dmgDealCal

scoreboard players operation @a[team=left,distance=0..2,sort=nearest,limit=1] damagerID = @s playerID
scoreboard players operation @e[team=left,distance=0..2,sort=nearest,limit=1] damage += @s dealingDMG
scoreboard players set @e[team=left,distance=0..2,sort=nearest,limit=1] impactCooldown 50
