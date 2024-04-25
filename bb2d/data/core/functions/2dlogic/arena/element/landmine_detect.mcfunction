execute if entity @s[team=left] run execute if entity @e[tag=model,team=right,distance=..1.4] run execute unless score @s landmineTrig matches 0 run execute unless score @s landmineTrig matches 1.. run execute as @e at @s if score @s playerID = @p[team=right,distance=..1.4,limit=1,sort=nearest] playerID run tellraw @a ["",{"text":"Notice: ","bold":true,"color":"red"},{"selector":"@p"},{"text":" stepped on a ","color":"yellow"},{"text":"landmine.","color":"red"}]
#tellraw @a ["",{"text":"Notice: ","bold":true,"color":"red"},{"selector":"@e[team=right,type=armor_stand,distance=..1.4,sort=nearest,limit=1]"},{"text":" stepped on a ","color":"yellow"},{"text":"landmine.","color":"red"}]

execute if entity @s[team=left] run execute if entity @e[tag=model,team=right,distance=..1.4] run execute unless score @s landmineTrig matches 0 run execute unless score @s landmineTrig matches 1.. run scoreboard players set @s landmineTrig 1

execute if entity @s[team=left] run execute unless entity @e[tag=model,team=right,distance=..1.4] run execute unless score @s landmineTrig matches 0 run execute if score @s landmineTrig matches 1 run scoreboard players set @s landmineTrig 2



execute if entity @s[team=right] run execute if entity @e[tag=model,team=left,distance=..1.4] run execute unless score @s landmineTrig matches 0 run execute unless score @s landmineTrig matches 1.. run execute as @e at @s if score @s playerID = @p[team=left,distance=..1.4,limit=1,sort=nearest] playerID run tellraw @a ["",{"text":"Notice: ","bold":true,"color":"red"},{"selector":"@p"},{"text":" stepped on a ","color":"yellow"},{"text":"landmine.","color":"red"}]
#tellraw @a ["",{"text":"Notice: ","bold":true,"color":"red"},{"selector":"@e[team=left,type=armor_stand,distance=..1.4,sort=nearest,limit=1]"},{"text":" stepped on a ","color":"yellow"},{"text":"landmine.","color":"red"}]

execute if entity @s[team=right] run execute if entity @e[tag=model,team=left,distance=..1.4] run execute unless score @s landmineTrig matches 0 run execute unless score @s landmineTrig matches 1.. run scoreboard players set @s landmineTrig 1

execute if entity @s[team=right] run execute unless entity @e[tag=model,team=left,distance=..1.4] run execute unless score @s landmineTrig matches 0 run execute if score @s landmineTrig matches 1 run scoreboard players set @s landmineTrig 2

execute if entity @s[scores={landmineTrig=2}] run function core:2dlogic/arena/element/landmine_explode

execute if block ~ ~1 ~ air run kill @s
