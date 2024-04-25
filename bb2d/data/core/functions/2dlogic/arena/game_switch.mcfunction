stopsound @a

execute if score .type gameType matches 1 run scoreboard players set .musicNum musicBoard 1
execute if score .type gameType matches 1 run scoreboard players set .musicTime musicBoard 0

execute if score .type gameType matches 2 run scoreboard players set .musicNum musicBoard 5
execute if score .type gameType matches 2 run scoreboard players set .musicTime musicBoard 0

execute if score .type gameType matches 3 run scoreboard players set .musicNum musicBoard 6
execute if score .type gameType matches 3 run scoreboard players set .musicTime musicBoard 0

execute if score .type gameType matches 4 run scoreboard players set .musicNum musicBoard 7
execute if score .type gameType matches 4 run scoreboard players set .musicTime musicBoard 0


execute if score .type gameType matches 1..3 run weather clear
execute if score .type gameType matches 1..3 run time set 0
execute if score .type gameType matches 4 run effect give @a minecraft:darkness 2 1 true
execute if score .type gameType matches 4 run weather thunder
execute if score .type gameType matches 4 run time set 14000

scoreboard players set .votingTime mapVotingTime 0

scoreboard players operation .gamecheck gameType = .type gameType