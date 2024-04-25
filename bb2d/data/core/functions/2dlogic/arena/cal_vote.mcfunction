scoreboard players set .max mapVote 0

execute store result score .one mapVote if entity @a[scores={mapVote=1}]
execute store result score .two mapVote if entity @a[scores={mapVote=2}]
execute store result score .three mapVote if entity @a[scores={mapVote=3}]

scoreboard players operation .max mapVote = .one mapVote
scoreboard players operation .max mapVote > .two mapVote
scoreboard players operation .max mapVote > .three mapVote

execute if score .max mapVote matches 0 run tellraw @a [{"text":"Vote: No one has voted, applying back up selection."}]
execute if score .max mapVote matches 0 run scoreboard players operation .choice mapVote = .mapCID mapSelection

execute if score .max mapVote = .one mapVote run tag @a[scores={mapVote=1}] add won
execute if score .max mapVote = .two mapVote run tag @a[scores={mapVote=2}] add won
execute if score .max mapVote = .three mapVote run tag @a[scores={mapVote=3}] add won

scoreboard players operation .choice mapVote = @a[tag=won,sort=random,limit=1] mapVote
tag @a remove won

execute if score .choice mapVote matches 1 run tellraw @a [{"text":"Vote: The City (3) has been selected."}]
execute if score .choice mapVote matches 2 run tellraw @a [{"text":"Vote: The Town has been selected."}]
execute if score .choice mapVote matches 3 run tellraw @a [{"text":"Vote: Dessert Village has been selected."}]
