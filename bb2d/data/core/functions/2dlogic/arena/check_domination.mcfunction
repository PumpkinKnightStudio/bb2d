
scoreboard players add .timer dominationTimer 1


execute if score .timer dominationTimer matches 60.. run execute if score .point factionPoint2 matches ..-450 run scoreboard players add .leftScore gameDatabase 1

execute if score .timer dominationTimer matches 60.. run execute if score .point factionPoint matches 450.. run scoreboard players add .rightScore gameDatabase 1

execute if score .timer dominationTimer matches 60.. run execute if score .point factionPoint matches ..-450 run scoreboard players add .leftScore gameDatabase 1

execute if score .timer dominationTimer matches 60.. run execute if score .point factionPoint2 matches 450.. run scoreboard players add .rightScore gameDatabase 1

execute if score .timer dominationTimer matches 60.. run scoreboard players set .timer dominationTimer 0