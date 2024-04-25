
#scoreboard players set @s stopMoveTimer 10

execute unless score @s chr.abi4.cd matches 1.. run effect give @s slowness 4 10 true 

scoreboard players set @s actionID 5

scoreboard players set @s animateMax 95

execute unless score @s chr.abi4.cd matches 1.. run scoreboard players set @s animate 1