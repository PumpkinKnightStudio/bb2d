execute as @s[team=left,type=player] at @s run execute as @a[team=left] run scoreboard players add @s effect.warcry 300
execute as @s[team=right,type=player] at @s run execute as @a[team=right] run scoreboard players add @s effect.warcry 300

#execute as @s[team=left,type=player] at @s run execute as @a[team=left] run scoreboard players add @s speedEFTA 300
#execute as @s[team=right,type=player] at @s run execute as @a[team=right] run scoreboard players add @s speedEFTA 300

execute as @s[team=left,type=armor_stand] at @s run execute as @a[team=left] run tellraw @s ["",{"selector":"@s"},{"text":" activated ","color":"green"},{"text":"Inspiring Aura ","color":"gold"},{"text":"(Allies Speed Buff)","color":"white"}]
execute as @s[team=right,type=armor_stand] at @s run execute as @a[team=right] run tellraw @s ["",{"selector":"@s"},{"text":" activated ","color":"green"},{"text":"Inspiring Aura ","color":"gold"},{"text":"(Allies Speed Buff)","color":"white"}]


