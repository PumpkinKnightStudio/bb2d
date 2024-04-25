item replace entity @s armor.head with potion{CustomModelData:700010}

scoreboard players operation @s animateSysTime = .gametime arenaTime
scoreboard players operation @s animateSysTime %= .24000 animateSysTime
scoreboard players remove @s animateSysTime 1
scoreboard players operation @s animateSysTime %= .72 numValue
execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime

scoreboard players set @s req_delete 72
tag @s remove unset
