scoreboard players set @s cutscenetimer-2 0 
tp @s -152 8 -322 0 0
execute if score @s facDestination matches 1 run execute if score .point factionPoint matches 450.. run tp @s -152 8 -295 0 0
execute if score @s facDestination matches 2 run execute if score .point factionPoint matches 450.. run execute if score .point factionPoint2 matches 450.. run tp @s -152 8 -271 0 0
