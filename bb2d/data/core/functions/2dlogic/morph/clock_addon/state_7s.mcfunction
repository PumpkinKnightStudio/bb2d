item replace entity @s armor.head with potion{CustomModelData:800210}
scoreboard players set @s obj.healthRemain -500

execute as @s[tag=left] at @s run scoreboard players operation @s obj.clockID = @a[team=left,tag=clock.grand.link,sort=nearest] playerID
execute as @s[tag=right] at @s run scoreboard players operation @s obj.clockID = @a[team=right,tag=clock.grand.link,sort=nearest] playerID

tag @s remove unset
