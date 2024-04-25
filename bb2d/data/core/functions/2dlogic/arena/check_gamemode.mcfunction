execute if score .confirmed gameType matches 0 run scoreboard players set .votingTime mapVotingTime 0
execute if block 62 5 -262 minecraft:lectern{Page:1} run scoreboard players set .type gameType 1
execute if block 62 5 -262 minecraft:lectern{Page:2} run scoreboard players set .type gameType 2
execute if block 62 5 -262 minecraft:lectern{Page:3} run scoreboard players set .type gameType 3
execute if block 62 5 -262 minecraft:lectern{Page:4} run scoreboard players set .type gameType 4
execute if block 62 5 -262 minecraft:lectern{Page:5} run scoreboard players set .type gameType 5

execute unless score .gamecheck gameType = .type gameType run execute if score .type gameType matches 2 run scoreboard objectives setdisplay sidebar scoreboard.game.two

execute unless score .gamecheck gameType = .type gameType run kill @e[tag=mode_setting]
execute unless score .gamecheck gameType = .type gameType run kill @e[tag=setting.button]
execute unless score .gamecheck gameType = .type gameType run function core:2dlogic/arena/game_switch

execute if score .confirmed gameType matches 0 run execute positioned 54 6 -262 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:oak_button[facing=east,powered=false]
execute if block 54 6 -262 minecraft:oak_button[powered=true] run scoreboard players set .confirmed gameType 1
execute if score .confirmed gameType matches 1 run setblock 54 6 -262 minecraft:air
execute if score .confirmed gameType matches 1 run function core:2dlogic/arena/release_game



execute if score .confirmed gameType matches 1 run scoreboard players set .confirmed gameType 2


execute if score .type gameType matches 5 run setblock 54 6 -262 air

## REMOVE THIS LATER!!!
execute if score .type gameType matches 5 run execute if score .confirmed gameType matches 2 run tp @a 71 5 -262 90 0
execute if score .type gameType matches 5 run execute if score .confirmed gameType matches 2 run setblock 62 5 -262 minecraft:air
execute if score .type gameType matches 5 run execute if score .confirmed gameType matches 2 run setblock 62 5 -262 lectern[facing=east,has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{title:"",author:"",pages:['[{"text":"\\n\\n"},{"text":"Bridge Brawl 2D","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\nVersion 1.1.0","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\n\\nFlip and select the page to choose Game Mode."}]','{"text":"Team Score Mode:\\n[Version 1.1]\\n\\nCompete to infiltrate enemy bases for points.\\n\\nThe team with the most points when time expires wins.\\"","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":"Team DeathMatch:\\n"},{"text":"[Version 1.0]\\n\\n","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"The team with the last remaining players wins."},{"text":"\\n\\nAvailable Add-ons:\\n ‣ Life Count\\n ‣ Time Setting\\n ‣ Make Bridge"}]','[{"text":"Domination:\\n"},{"text":"[Beta 1.0]\\n\\n","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Battle to control key points across the map. Hold these strategic locations to earn points over time. The team that dominates the most points and maintains control emerges victorious."}]','[{"text":"Infection:","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n[Beta 1.5]","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nOne player starts as infected. If they eliminate a survivor, that player becomes infected too. Survivors must avoid infection while the infected hunt them down.\\"","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":"Capture The Flag:\\n"},{"text":"[Coming Soon]\\n\\n","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Seize the enemy\'s flag while defending their own. Secure the opposing team\'s flag and return it to your base to score points and claim victory."}]']}}} replace
execute if score .type gameType matches 5 run execute if score .confirmed gameType matches 2 run scoreboard players set .type gameType 1

execute if score .type gameType matches 1 run function core:2dlogic/arena/extra_setting/mode_one
execute if score .type gameType matches 2 run function core:2dlogic/arena/extra_setting/mode_two