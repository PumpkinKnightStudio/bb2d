
#execute if score .screenTime loadingScreen matches 300 run tellraw @a [{"text":"Patching system in progress. [E-01]","color":"yellow"}]
#tellraw @a [{"text":"The system will now attempt to resolve this issue. [ER-01]","color":"red"}]
execute if score .screenTime loadingScreen matches 300 run title @a actionbar {"text":"Applying: Patch E01","bold":true,"color":"yellow"}

## FIX SCRIPT
execute if score .screenTime loadingScreen matches 300 run execute as @a[scores={playerID=1..,checkID=1}] at @s run function core:setup/make_self
## UPDATE-8.1
#execute if score .screenTime loadingScreen matches 300 run scoreboard players set @e impactCooldown -10000
execute if score .screenTime loadingScreen matches 300 run scoreboard players set @e impactCooldown 0

execute if score .screenTime loadingScreen matches 300 run execute as @a run execute unless score @s useCustomHead matches 0.. run scoreboard players set @s useCustomHead -999
execute if score .screenTime loadingScreen matches 300 run execute as @a[scores={useCustomHead=-999}] run scoreboard players set @s useCustomHead 0


execute if score .screenTime loadingScreen matches 400 run execute as @e run execute at @s as @e if score @s playerID = @p playerID run scoreboard players add @s checkID 1
execute if score .screenTime loadingScreen matches 400 run execute if entity @a[scores={checkID=1}] run tellraw @a [{"text":"Unable to resolve error-01, stopping game.","color":"red"}]
execute if score .screenTime loadingScreen matches 400 run execute unless entity @a[scores={checkID=1}] run tellraw @a [{"text":"Patched E01 - Completed.","color":"green"}]

