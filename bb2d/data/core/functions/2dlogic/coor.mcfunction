execute store result score @s zPos run data get entity @s Pos[2] 100.0
#execute if score @s useCustomHead matches 14 run execute store result score @s zPos run data get entity @s Pos[2] 1000.0
execute store result score @s yLoc run data get entity @s Pos[1] 100.0

execute store result score @s rotation1 run data get entity @s Rotation[0] 1.0
execute store result score @s rotation2 run data get entity @s Rotation[1] 1.0

execute if score @s dodgeTimer matches 1.. run scoreboard players operation @s previousZ = @s zPos
execute if score @s dodgeTimer matches 1.. run scoreboard players operation @s previousY = @s yLoc

# CALCULATE - LEFT OR RIGHT MOVEMENT
execute if score @s zPos < @s previousZ run scoreboard players set @s lookingDir 1
execute if score @s zPos > @s previousZ run scoreboard players set @s lookingDir 2

execute if score @s yLoc < @s previousY run execute if score @s yChangeID matches 8..9 run scoreboard players set @s yChangeID 2
execute if score @s yLoc > @s previousY run scoreboard players set @s yChangeID 10



#execute if score .active lowPerformMode matches 1.. run execute unless score @s zPos = @s previousZ run scoreboard players set @s walking 3
#execute if score .active lowPerformMode matches 0 run execute unless score @s zPos = @s previousZ run scoreboard players set @s walking 2
execute unless score @s zPos = @s previousZ run scoreboard players set @s walking 2
execute unless score @s zPos = @s previousZ run scoreboard players set @s[type=player,scores={useCustomHead=14}] walking 3
execute unless score @s zPos = @s previousZ run scoreboard players set @s[type=player,scores={useCustomHead=15}] walking 3
execute unless score @s zPos = @s previousZ run scoreboard players set @s[type=player,scores={useCustomHead=11}] walking 3
execute unless score @s yLoc = @s previousY run title @s[type=player,scores={useCustomHead=12,devast.explosion.timer=1..}] actionbar {"text":"You ability is cancelled","color":"red"}
execute unless score @s yLoc = @s previousY run scoreboard players set @s[type=player,scores={useCustomHead=12}] devast.explosion.timer 0

execute if score @s walking matches 0 run scoreboard players add @s idleTime 1
execute if score @s walking matches 1.. run scoreboard players set @s idleTime 0


# RESET
scoreboard players remove @s[scores={yChangeID=1..}] yChangeID 1
scoreboard players remove @s[scores={walking=1..}] walking 1
scoreboard players operation @s previousZ = @s zPos
scoreboard players operation @s previousY = @s yLoc