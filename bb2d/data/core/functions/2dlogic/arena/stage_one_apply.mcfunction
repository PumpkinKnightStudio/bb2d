scoreboard players set .votingTime mapVotingTime 0
function core:2dlogic/arena/make_map/one
function core:2dlogic/arena/make_map/empty
function core:setup/lobby_choose


effect give @a minecraft:blindness 3 3 true
scoreboard players set .type gameType 1
scoreboard players set .confirmed gameType 0
tp @a 71 5 -262 90 0

scoreboard players set .gameState gameControl 1
bossbar set game:voting players @a
function bb2d_jmc:announcebar/refresh_other

scoreboard players set .musicNum musicBoard 1
scoreboard players set .musicTime musicBoard 0



scoreboard players set .screenID loadingScreen 2

setblock 54 5 -262 structure_block[mode=load]{name:"minecraft:vote_gate_active",posX:-1,posY:0,posZ:-1,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock 54 6 -262 redstone_block

setblock 54 5 -262 air
setblock 54 6 -262 air

setblock 62 5 -262 minecraft:air
setblock 62 5 -262 lectern[facing=east,has_book=true]{Book:{id:"minecraft:written_book",Count:1b,tag:{title:"",author:"",pages:['[{"text":"\\n\\n"},{"text":"Bridge Brawl 2D","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\nVersion 1.1.0","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\n\\nFlip and select the page to choose Game Mode."}]','{"text":"Team Score Mode:\\n[Version 1.1]\\n\\nCompete to infiltrate enemy bases for points.\\n\\nThe team with the most points when time expires wins.\\"","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','[{"text":"Team DeathMatch:\\n"},{"text":"[Version 1.0]\\n\\n","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"The team with the last remaining players wins."},{"text":"\\n\\nAvailable Add-ons:\\n ‣ Life Count\\n ‣ Time Setting\\n ‣ Make Bridge"}]','[{"text":"Domination:\\n"},{"text":"[Beta 1.0]\\n\\n","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Battle to control key points across the map. Hold these strategic locations to earn points over time. The team that dominates the most points and maintains control emerges victorious."}]','[{"text":"Infection:","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n[Beta 1.5]","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\\n\\nOne player starts as infected. If they eliminate a survivor, that player becomes infected too. Survivors must avoid infection while the infected hunt them down.\\"","color":"black","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]','[{"text":"Capture The Flag:\\n"},{"text":"[Coming Soon]\\n\\n","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Seize the enemy\'s flag while defending their own. Secure the opposing team\'s flag and return it to your base to score points and claim victory."}]']}}} replace

setblock 54 6 -262 minecraft:oak_button[facing=east,powered=false]
stopsound @a