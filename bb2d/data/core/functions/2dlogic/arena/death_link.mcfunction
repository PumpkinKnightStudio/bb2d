scoreboard players add @s killCount 1
execute as @s at @s as @e unless score @s playerID = @s damagerID run scoreboard players add @s[scores={useCustomHead=7}] hana.summon.cd 1

tellraw @s[scores={useCustomHead=7,hana.summon.cd=3..}] [{"text":"Ultimate Ability: ","color":"gold"},{"text":"Number of opponent defeated is at maximum amount.","color":"green"}]
tellraw @s[scores={useCustomHead=7,hana.summon.cd=3..}] {"text":"Ultimate ability is now ready","color":"gold"}
execute as @s at @s as @e unless score @s playerID = @s damagerID run tellraw @s[scores={useCustomHead=7,hana.summon.cd=1..2}] [{"text":"Ultimate Ability: ","color":"gold"},{"text":"Number of opponent defeated +1","color":"green"}]