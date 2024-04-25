scoreboard players set $dm_triggered __variable__ 1
tellraw @a ["",{"selector":"@s"},{"text":" "},{"text":"fell into the void.","color":"yellow"}]
scoreboard players set .two left.notifyAB 20
function bb2d_extra:bossbarutil/announcedead