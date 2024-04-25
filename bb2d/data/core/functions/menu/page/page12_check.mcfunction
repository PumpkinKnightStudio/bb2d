
execute if score .point factionPoint2 matches ..-450 run execute as @s[team=left] unless data entity @s EnderItems[{Slot:12b}] run scoreboard players set @s facDestination 1
execute if score .point factionPoint2 matches ..-450 run execute if score .point factionPoint matches ..-450 run execute as @s[team=left] unless data entity @s EnderItems[{Slot:14b}] run scoreboard players set @s facDestination 2

execute if score .point factionPoint matches 450.. run execute if score .point factionPoint2 matches 450.. run execute as @s[team=right] unless data entity @s EnderItems[{Slot:12b}] run scoreboard players set @s facDestination 2
execute if score .point factionPoint matches 450.. run execute as @s[team=right] unless data entity @s EnderItems[{Slot:14b}] run scoreboard players set @s facDestination 1

execute as @s unless data entity @s EnderItems[{Slot:12b}] run function core:2dlogic/arena/func_respawn
execute as @s unless data entity @s EnderItems[{Slot:14b}] run function core:2dlogic/arena/func_respawn

