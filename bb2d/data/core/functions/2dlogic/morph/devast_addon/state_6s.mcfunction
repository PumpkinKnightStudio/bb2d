item replace entity @s armor.head with potion{CustomModelData:800508}

scoreboard players operation @s animateSysTime = .gametime arenaTime
scoreboard players operation @s animateSysTime %= .24000 animateSysTime
scoreboard players add @s animateSysTime 8
scoreboard players operation @s animateSysTime %= .96 numValue
execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime

scoreboard players set @s req_delete 156
tag @s remove unset
