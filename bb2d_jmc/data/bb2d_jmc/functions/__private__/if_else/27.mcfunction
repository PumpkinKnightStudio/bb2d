execute if entity @s[type=player] run tellraw @a ["",{"text":"Autopsy: ","color":"red","bold":true},{"selector":"@p","color":"red"},{"text":" ","color":"red"},{"text":"was recently stomped by a huge deer. (","color":"gray"},{"selector":"@s","color":"gray"},{"text":"'s Ultimate)","color":"gray"}]
scoreboard players set __if_else__ __variable__ 1