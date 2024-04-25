execute as @s at @s run summon block_display ~-20 -9 ~-6 {Tags:["eliminate"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[11f,11f,11f]},block_state:{Name:"minecraft:brown_stained_glass"}}

execute as @s at @s run playsound minecraft:entity.blaze.death master @a ~ ~10 ~ 1 1.9

#tellraw @a ["",{"text":"","bold":true,"color":"red"},{"selector":"@s"},{"text":" has been eliminated.","color":"yellow"}]

#JMC# execute as @s at @s as @e if score @s playerID = @p[scores={damagerCD=..240,damagerID2=0..}] damagerID run execute as @s[type=player] run tellraw @a ["",{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" has been eliminated by ","color":"yellow"},{"selector":"@s"}]

#JMC# function core:2dlogic/arena/eliminated_extra/tnt
function core:2dlogic/arena/eliminated_extra/landmine


## WHILE RUNNING AWAY FROM
#JMC# execute as @s at @s as @e if score @s playerID = @p[scores={damagerCD=241..}] damagerID run execute as @s[type=player] run tellraw @a ["",{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" met his end while running away from ","color":"yellow"},{"selector":"@s"}]

execute as @s at @s as @e if score @s playerID = @p damagerID run execute as @s[type=player] run function core:2dlogic/arena/death_link

#JMC# execute as @s run execute if score @s damagerID matches 0 run execute if score @s damagerCD matches 0 run execute if score @s duiMemory matches 0 run tellraw @a ["",{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" fell into the void.","color":"yellow"}]

## DUE

#JMC# execute as @s run execute if score @s chr_gender matches 0 run execute if score @s effect_inked matches 1.. run tellraw @a ["",{"text":"Autopsy: ","bold":true,"color":"red"},{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" shouldn't be walking with a squid ink covering their eyes.","color":"yellow"}]
#JMC# execute as @s run execute if score @s chr_gender matches 1 run execute if score @s effect_inked matches 1.. run tellraw @a ["",{"text":"Autopsy: ","bold":true,"color":"red"},{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" shouldn't be walking with a squid ink covering his eyes.","color":"yellow"}]
#JMC# execute as @s run execute if score @s chr_gender matches 2 run execute if score @s effect_inked matches 1.. run tellraw @a ["",{"text":"Autopsy: ","bold":true,"color":"red"},{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" shouldn't be walking with a squid ink covering her eyes.","color":"yellow"}]




#execute as @s at @s as @e if score @s playerID = @p damagerID run execute as @s[type=player] run tellraw @a ["",{"text":"Autopsy: ","bold":true,"color":"red"},{"selector":"@p"},{"text":" was recently stomped by a huge deer. ","color":"gray"},{"text":"("},{"selector":"@s"},{"text":"'s Ultimate)."}]
#execute as @s at @s as @e if score @s[type=player] playerID = @p[scores={duiMemory=2}] damagerID run tellraw @a ["",{"text":"Autopsy: ","bold":true,"color":"red"},{"selector":"@p"},{"text":" was blown away by a heavy wind. ","color":"gray"},{"text":"("},{"selector":"@s"},{"text":"'s Ultimate)."}]

execute as @s at @s as @e if score @s playerID = @p[scores={duiMemory=1}] damagerID run execute as @s[type=player] run execute if score @p duiMemory matches 1 run tellraw @a ["",{"text":"Autopsy: ","bold":true,"color":"red"},{"selector":"@p"},{"text":" was recently stomped by a huge deer. ","color":"gray"},{"text":"("},{"selector":"@s"},{"text":"'s Ultimate)."}]
execute as @s at @s as @e if score @s playerID = @p[scores={duiMemory=2}] damagerID run execute as @s[type=player] run execute if score @p duiMemory matches 2 run tellraw @a ["",{"text":"Autopsy: ","bold":true,"color":"red"},{"selector":"@p"},{"text":" was blown away by a heavy wind. ","color":"gray"},{"text":"("},{"selector":"@s"},{"text":"'s Ultimate)."}]


execute as @s run execute unless score @s damagerID matches 0 run execute if score @s damagerCD matches 1..30 run tellraw @a ["",{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" said \"wow that\'s was instant\".","color":"yellow"}]
execute as @s run execute if score @s damagerID matches 0 run execute unless score @s damagerCD matches 0 run tellraw @a ["",{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" has been eliminated.","color":"yellow"}]
execute as @s run execute if score @s damagerID matches ..-10000 run execute unless score @s damagerCD matches 0 run tellraw @a ["",{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" died by magical force.","color":"yellow"}]

execute as @s at @s as @e if score @s playerID = @p[scores={damagerCD=240..}] damagerID2 run execute as @s[type=player] run tellraw @a ["",{"text":"","bold":true,"color":"red"},{"selector":"@p"},{"text":" death was assisted by ","color":"yellow"},{"selector":"@s"}]

execute as @s[team=left] at @s run tellraw @a[team=right] ["",{"text":"+ 30 coins from elimination","bold":true,"color":"green"}]

execute as @s[team=right] at @s run tellraw @a[team=left] ["",{"text":"+ 30 coins from elimination","bold":true,"color":"green"}]

execute as @s[team=left] at @s run scoreboard players add @a[team=right] coins 30
execute as @s[team=right] at @s run scoreboard players add @a[team=left] coins 30

scoreboard players set @s damagerID 0
scoreboard players set @s health 0
scoreboard players set @s fallChanceT 0
scoreboard players set @s damagerCD 0
scoreboard players set @s duiMemory 0
scoreboard players set @s duiCanceller -1
scoreboard players set @s damagerID2 0
scoreboard players set @s friendlyFireID 0