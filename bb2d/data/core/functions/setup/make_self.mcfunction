
execute as @s[team=left] at @s run summon armor_stand ~-9 ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["needID","model","left","have.head"],CustomName:'{"text":"[!]","color":"green"}'}

execute as @s[team=right] at @s run summon armor_stand ~-9 ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["needID","model","right","have.head"],CustomName:'{"text":"[!]","color":"green"}'}

execute as @s at @s run setblock ~ ~-5 ~ minecraft:oak_sign{front_text:{color:"green",messages:['{"selector":"@p","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}','{"text":""}','{"text":""}','{"text":""}']}}

execute as @s at @s run data modify entity @e[tag=needID,limit=1] CustomName set from block ~ ~-5 ~ front_text.messages[0]

execute as @s at @s run setblock ~ ~-5 ~ air replace

execute as @s at @s run loot replace entity @e[tag=needID] armor.head loot core:head
execute as @s at @s positioned ~-9 ~ ~ run scoreboard players operation @e[tag=needID,limit=1,sort=nearest] playerID = @s playerID
scoreboard players set @e[tag=needID,sort=nearest,limit=1] walkingAnimC 0

tag @e remove needID


execute as @s at @s run scoreboard players set @s playing 0

