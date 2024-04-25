
scoreboard players operation @e[tag=guider.leo] animateSysTime = .timer gameStartTimer
scoreboard players operation @e[tag=guider.leo] animateSysTime %= .24000 animateSysTime
scoreboard players add @e[tag=guider.leo] animateSysTime 1

scoreboard players operation @e[tag=guider.leo] animateSysTime %= @s animateMax
execute store result entity @e[tag=guider.leo,limit=1] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime