execute as @s[team=left] at @s run summon block_display ~ ~ ~ {Silent:1b,Glowing:1b,Tags:["buildingbox","unclaimed","left"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},block_state:{Name:"minecraft:yellow_stained_glass"}}

execute as @s[team=right] at @s run summon block_display ~ ~ ~ {Silent:1b,Glowing:1b,Tags:["buildingbox","unclaimed","right"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.05f,1.05f,1.05f]},block_state:{Name:"minecraft:yellow_stained_glass"}}

execute as @a[scores={playerID=1..,buildingSwitch=1}] at @s as @e if score @s playerID = @p playerID run execute as @s[type=armor_stand] run execute as @e[type=minecraft:block_display,tag=unclaimed,sort=nearest] run scoreboard players operation @s playerID = @p playerID

scoreboard players set @s buildingSwitch 2

