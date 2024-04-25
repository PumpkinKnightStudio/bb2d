scoreboard players set @s cutscenetimer-1 0 
tp @s -152 8 -233 -180 0
execute if score @s facDestination matches 1 run execute if score .point factionPoint2 matches ..-450 run tp @s -152 8 -260 -180 0
execute if score @s facDestination matches 2 run execute if score .point factionPoint2 matches ..-450 run execute if score .point factionPoint matches ..-450 run tp @s -152 8 -284 -180 0
