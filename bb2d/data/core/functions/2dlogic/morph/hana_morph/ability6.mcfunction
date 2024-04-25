
item replace entity @s armor.head with minecraft:potion{CustomModelData:700011}
scoreboard players operation @s animateSysTime = .gametime arenaTime
scoreboard players operation @s animateSysTime %= .24000 animateSysTime
scoreboard players add @s animateSysTime 3
scoreboard players operation @s animateSysTime %= @s animateMax
execute store result entity @s ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get @s animateSysTime