scoreboard players operation $this_attacker __variable__ = @p damagerID2
execute unless score $main_attacker __variable__ = $this_attacker __variable__ if entity @s[type=player] run tellraw @a ["",{"selector":"@p"},{"text":" "},{"text":"death was assisted by ","color":"red"},{"selector":"@s","color":"red"},{"text":".","color":"red"}]