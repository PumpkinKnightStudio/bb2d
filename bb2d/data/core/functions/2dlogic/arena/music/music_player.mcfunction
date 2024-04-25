execute if score .musicState musicBoard matches 1 run scoreboard players add .musicTime musicBoard 1

##Starting Switch to Loop
#execute if entity @e[tag=gameCore,scores={musicID=1,musicNum=1,musicTime=323}] run function light_within:next_track
#execute if entity @e[tag=gameCore,scores={musicID=1,musicNum=1,musicTime=1}] run execute as @a at @s run playsound minecraft:music.raid.1 master @s ~ ~ ~ 0.5 1


##Looper



execute if score .musicTime musicBoard matches 1320 run execute if score .musicNum musicBoard matches 1 run scoreboard players set .musicTime musicBoard 0

execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 1 run execute as @a at @s run playsound minecraft:game.selection record @s ~ ~ ~ 0.7 1

execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 1 run execute as @a at @s run scoreboard players set .musicPlaying musicBoard 1



execute if score .musicTime musicBoard matches 1 run execute unless score .musicPlaying musicBoard = .musicNum musicBoard run execute as @a at @s run scoreboard players operation .musicPlaying musicBoard = .musicNum musicBoard

execute if score .musicTime musicBoard matches 940 run execute if score .musicNum musicBoard matches 2 run scoreboard players set .musicTime musicBoard 0

execute if score .type gameType matches 1..3 run execute if score .musicTime musicBoard matches 1077.. run execute if score .musicNum musicBoard matches 3 run execute if score .musicPlaying musicBoard matches 3 run function core:2dlogic/arena/end_apply
execute if score .type gameType matches 4 run execute if score .musicTime musicBoard matches 1660.. run execute if score .musicNum musicBoard matches 3 run execute if score .musicPlaying musicBoard matches 3 run function core:2dlogic/arena/end_apply

execute if score .type gameType matches 1..3 run execute if score .musicTime musicBoard matches 1077.. run execute if score .musicNum musicBoard matches 3 run execute if score .musicPlaying musicBoard matches 3 run scoreboard players set .musicTime musicBoard 0
execute if score .type gameType matches 4.. run execute if score .musicTime musicBoard matches 1660.. run execute if score .musicNum musicBoard matches 3 run execute if score .musicPlaying musicBoard matches 3 run scoreboard players set .musicTime musicBoard 0



execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 2 run execute as @a at @s run playsound minecraft:game.music.fighting_normal record @s ~ ~ ~ 0.5 1

execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 2 run execute as @a at @s run scoreboard players set .musicPlaying musicBoard 2


execute if score .musicTime musicBoard matches 940.. run execute if score .musicNum musicBoard matches 3 run execute if score .musicPlaying musicBoard matches 2 run scoreboard players set .musicTime musicBoard 0



execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 3 run execute if score .type gameType matches 1..3 run execute as @a at @s run bossbar set minecraft:the_end max 1077
execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 3 run execute if score .type gameType matches 1..3 run execute as @a at @s run playsound minecraft:game.music.fighting_ending record @s ~ ~ ~ 0.7 1
execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 3 run execute if score .type gameType matches 4 run execute as @a at @s run playsound minecraft:game.music.infection.final record @s ~ ~ ~ 0.7 1
execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 3 run execute if score .type gameType matches 4 run execute as @a at @s run bossbar set minecraft:the_end max 1660

execute if score .musicTime musicBoard matches 5 run execute if score .musicNum musicBoard matches 3 run function core:2dlogic/arena/final_message
execute if score .musicTime musicBoard matches 5 run execute if score .musicNum musicBoard matches 3 run function bb2d_jmc:announcebar/refresh_other
execute if score .musicTime musicBoard matches 6 run execute if score .musicNum musicBoard matches 3 run execute if score .musicPlaying musicBoard matches 2 run scoreboard players set .musicPlaying musicBoard 3

execute if score .musicPlaying musicBoard matches 3 run execute if score .musicNum musicBoard matches 3 run execute as @a at @s run scoreboard players operation .warningTrigger musicBoard = .musicTime musicBoard

execute if score .musicPlaying musicBoard matches 3 run execute if score .musicNum musicBoard matches 3 run execute as @a at @s run scoreboard players operation .warningTrigger musicBoard %= .warning gameControl

execute if score .musicPlaying musicBoard matches 3 run execute if score .musicNum musicBoard matches 3 run execute if score .warningTrigger musicBoard matches 1..12 run worldborder warning distance 1000

execute if score .musicPlaying musicBoard matches 3 run execute if score .musicNum musicBoard matches 3 run execute if score .warningTrigger musicBoard matches 13..24 run worldborder warning distance 1300

execute if score .musicPlaying musicBoard matches 3 run execute if score .musicNum musicBoard matches 3 run execute if score .warningTrigger musicBoard matches 25..36 run worldborder warning distance 1800

execute if score .musicPlaying musicBoard matches 3 run execute if score .musicNum musicBoard matches 3 run execute if score .warningTrigger musicBoard matches 37..50 run worldborder warning distance 1300

execute if score .musicTime musicBoard matches 1 run execute if score .musicPlaying musicBoard matches 3 run execute as @a at @s run bossbar set minecraft:the_end players @a

execute if score .musicNum musicBoard matches 3 run execute store result bossbar minecraft:the_end value run scoreboard players get .musicTime musicBoard


execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 4 run execute as @a at @s run playsound minecraft:game.music.deathmatch record @s ~ ~ ~ 0.7 1
execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 4 run scoreboard players set .musicPlaying musicBoard 4
execute if score .musicTime musicBoard matches 1440.. run execute if score .musicNum musicBoard matches 4 run scoreboard players set .musicTime musicBoard 0


execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 5 run execute as @a at @s run playsound minecraft:game.music.deathmatch.choose record @s ~ ~ ~ 0.7 1
execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 5 run scoreboard players set .musicPlaying musicBoard 5
execute if score .musicTime musicBoard matches 1440.. run execute if score .musicNum musicBoard matches 5 run scoreboard players set .musicTime musicBoard 0

## FOR GAMEMODE 
execute if score .musicTime musicBoard matches 1440.. run execute if score .musicPlaying musicBoard matches 4..5 run execute if score .musicNum musicBoard matches 3 run scoreboard players set .musicTime musicBoard 0
execute if score .musicTime musicBoard matches 1288.. run execute if score .musicPlaying musicBoard matches 6 run execute if score .musicNum musicBoard matches 3 run scoreboard players set .musicTime musicBoard 0
#execute if score .musicTime musicBoard matches 1.. run execute if score .musicNum musicBoard matches 3 run stopsound @a record minecraft:game.music.domination

execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 6 run execute as @a at @s run playsound minecraft:game.music.domination record @s ~ ~ ~ 0.7 1
execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 6 run scoreboard players set .musicPlaying musicBoard 6
execute if score .musicTime musicBoard matches 1286.. run execute if score .musicPlaying musicBoard matches 6 run stopsound @a record minecraft:game.music.domination
execute if score .musicTime musicBoard matches 1288.. run execute if score .musicNum musicBoard matches 6 run scoreboard players set .musicTime musicBoard 0

execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 7 run execute as @a at @s run playsound minecraft:game.music.infection.choose record @s ~ ~ ~ 0.7 1
execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 7 run scoreboard players set .musicPlaying musicBoard 7
execute if score .musicTime musicBoard matches 1185.. run execute if score .musicPlaying musicBoard matches 7 run scoreboard players set .musicTime musicBoard 0

execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 8 run execute as @a at @s run playsound minecraft:game.music.infection record @s ~ ~ ~ 0.7 1
execute if score .musicTime musicBoard matches 1 run execute if score .musicNum musicBoard matches 8 run scoreboard players set .musicPlaying musicBoard 8
execute if score .musicTime musicBoard matches 1400.. run execute if score .musicPlaying musicBoard matches 8 run scoreboard players set .musicTime musicBoard 0

#execute as @a at @s run execute if score @s lobbyMusicC matches 1 run playsound minecraft:devast.ost record @s ~ ~ ~ 0.5 1
#execute as @a at @s run execute if score @s lobbyMusicC matches 4330.. run scoreboard players set @s lobbyMusicC 0

execute as @a at @s run execute if score @s lobbyMusicC matches 1 run playsound minecraft:leo.ost record @s ~ ~ ~ 0.5 1
execute as @a at @s run execute if score @s lobbyMusicC matches 4330.. run scoreboard players set @s lobbyMusicC 0

execute if score .gameState gameControl matches 0 run scoreboard players add @a lobbyMusicC 1
execute if score .gameState gameControl matches 0 run scoreboard players set .musicNum musicBoard 0