## PARALYZE (SHOCK)
execute if entity @s[scores={playerID=1,effect.paralyze.time=1..}] run execute unless entity @e[tag=effect.paralyze,tag=playerID.1] run summon block_display -89 15 -282 {CustomNameVisible:1b,Tags:["statusEffect","effect.paralyze","playerID.1"],CustomName:'{"text":""}'}
execute if entity @s[scores={playerID=1,effect.paralyze.time=1..}] run scoreboard players set @e[tag=effect.paralyze,tag=playerID.1] statusEffectDB 1
execute unless entity @s[scores={playerID=1,effect.paralyze.time=1..}] run kill @e[tag=effect.paralyze,tag=playerID.1]


## POISON
execute if entity @s[scores={playerID=1,effect.poison=1..}] run execute unless entity @e[tag=effect.poison,tag=playerID.1] run summon block_display -89 15 -284 {CustomNameVisible:1b,Tags:["statusEffect","effect.poison","playerID.1"],CustomName:'{"text":""}'}
execute if entity @s[scores={playerID=1,effect.poison=1..}] run scoreboard players set @e[tag=effect.poison,tag=playerID.1] statusEffectDB 1
execute unless entity @s[scores={playerID=1,effect.poison=1..}] run kill @e[tag=effect.poison,tag=playerID.1]


execute unless score .musicNum musicBoard matches 3 run title @s[scores={playerID=1}] title {"text":""}
execute unless score .musicNum musicBoard matches 3 run title @s[scores={playerID=1}] subtitle ["",{"selector":"@e[tag=effect.paralyze,limit=1]"},{"selector":"@e[tag=effect.poison,limit=1]"}]