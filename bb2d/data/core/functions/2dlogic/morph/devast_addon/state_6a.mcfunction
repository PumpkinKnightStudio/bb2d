

scoreboard players set @s animateSysTime 8388693
scoreboard players remove @s animateSysTime 1
execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime