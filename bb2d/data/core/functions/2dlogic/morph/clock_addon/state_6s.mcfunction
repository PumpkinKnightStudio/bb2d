item replace entity @s armor.head with potion{CustomModelData:800201}

execute as @s[tag=left] at @s run scoreboard players operation @s obj.LinkID = @a[team=left,tag=clock.tp.setup,sort=nearest] playerID
execute as @s[tag=right] at @s run scoreboard players operation @s obj.LinkID = @a[team=right,tag=clock.tp.setup,sort=nearest] playerID

execute as @e at @s if score @s obj.LinkID = @p[tag=clock.tp.setup] playerID run tag @p remove clock.tp.setup


tag @s remove unset
