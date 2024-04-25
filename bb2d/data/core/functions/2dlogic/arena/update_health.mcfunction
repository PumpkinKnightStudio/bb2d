execute as @s run setblock -89 16 -279 air
execute as @s run setblock -89 16 -279 air



execute as @s[team=left,scores={health=..0}] at @s run setblock -89 16 -279 minecraft:oak_sign{front_text: {messages: ['[{"score":{"name":"@p[tag=updatingHealth]","objective":"Health"},"color":"aqua"},{"text":" %","color":"aqua"}]','["",{"text":""}]','["",{"text":""}]','["",{"text":""}]']}}
execute as @s[team=right,scores={health=..0}] at @s run setblock -89 16 -279 minecraft:oak_sign{front_text: {messages: ['[{"score":{"name":"@p[tag=updatingHealth]","objective":"Health"},"color":"gold"},{"text":" %","color":"gold"}]','["",{"text":""}]','["",{"text":""}]','["",{"text":""}]']}}

execute as @s[team=left,scores={health=1..}] at @s run setblock -89 16 -279 minecraft:oak_sign{front_text: {messages: ['[{"text":"⛉ ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"name":"@p[tag=updatingHealth]","objective":"Health"},"color":"aqua","bold":false},{"text":" %","color":"aqua"}]','["",{"text":""}]','["",{"text":""}]','["",{"text":""}]','[" "]']}}
execute as @s[team=right,scores={health=1..}] at @s run setblock -89 16 -279 minecraft:oak_sign{front_text: {messages: ['[{"text":"⛉ ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"name":"@p[tag=updatingHealth]","objective":"Health"},"color":"gold","bold":false},{"text":" %","color":"gold"}]','["",{"text":""}]','["",{"text":""}]','["",{"text":""}]','[" "]']}}


execute as @s[tag=have.head,tag=updatingHealth] at @s run data modify entity @s CustomName set from block -89 16 -279 front_text.messages[0]

