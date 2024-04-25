tellraw @a ["",{"selector":"@p"},{"text":" "},{"text":"has been eliminated by ","color":"red"},{"selector":"@s","color":"red"},{"text":".","color":"red"}]
scoreboard players add @s killStreak 1
scoreboard players set $dm_triggered __variable__ 1