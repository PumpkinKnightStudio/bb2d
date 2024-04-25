execute if score .votingTime mapVotingTime matches ..1199 run scoreboard players add .votingTime mapVotingTime 1

execute if score .votingTime mapVotingTime matches 1200 run function core:2dlogic/arena/cal_vote

execute if score .votingTime mapVotingTime matches 1200..1500 run scoreboard players add .votingTime mapVotingTime 1

scoreboard players operation .timeLeft mapVotingTime = .timeMax mapVotingTime
scoreboard players operation .timeLeft mapVotingTime -= .votingTime mapVotingTime

bossbar set game:voting players @a
execute store result bossbar game:voting value run scoreboard players get .timeLeft mapVotingTime


execute if score .votingTime mapVotingTime matches 1300 run bossbar set game:voting players

execute if score .votingTime mapVotingTime matches 1300 run function core:2dlogic/arena/stage_two_apply


execute if score .votingTime mapVotingTime matches 1300 run execute if score .type gameType matches 4 run execute as @a[team=right] run team join left @s
execute if score .votingTime mapVotingTime matches 1300 run execute if score .type gameType matches 4 run execute as @r[team=left] run team join right @s

execute if score .votingTime mapVotingTime matches 1300 run scoreboard players set .gameState gameControl 2
