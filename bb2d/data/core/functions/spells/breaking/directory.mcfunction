
execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~1 ~-1 air run execute unless block ~ ~ ~-1 air run execute unless block ~ ~-1 ~-1 air run execute at @s run function core:spells/breaking/break_check

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~1 ~1 air run execute unless block ~ ~ ~1 air run execute unless block ~ ~-1 ~1 air run execute at @s run function core:spells/breaking/break_check

execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute if block ~ ~1 ~-1 air run execute unless block ~ ~ ~-1 air run execute unless block ~ ~-1 ~-1 air run execute at @s run function core:spells/breaking/break_check

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute if block ~ ~1 ~1 air run execute unless block ~ ~ ~1 air run execute unless block ~ ~-1 ~1 air run execute at @s run function core:spells/breaking/break_check


execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute if block ~ ~1 ~-1 air run execute if block ~ ~ ~-1 air run execute unless block ~ ~-1 ~-1 air run execute at @s run function core:spells/breaking/break_check

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute if block ~ ~1 ~1 air run execute if block ~ ~ ~1 air run execute unless block ~ ~-1 ~1 air run execute at @s run function core:spells/breaking/break_check


## Patch Break Under

execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute if block ~ ~1 ~-1 air run execute if block ~ ~ ~-1 air run execute if block ~ ~-1 ~-1 air run execute at @s run function core:spells/breaking/break_check

execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute if block ~ ~1 ~1 air run execute if block ~ ~ ~1 air run execute if block ~ ~-1 ~1 air run execute at @s run function core:spells/breaking/break_check

## PATCH (2)

# [-] 
# [X][P] <----
# [O][P] 
# [X][-]

execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~1 ~-1 air run execute if block ~ ~ ~-1 air run execute unless block ~ ~-1 ~-1 air run execute at @s run function core:spells/breaking/break_check
execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~1 ~1 air run execute if block ~ ~ ~1 air run execute unless block ~ ~-1 ~1 air run execute at @s run function core:spells/breaking/break_check

## PATCH (3)

# [x] 
# [O][P]
# [x][P] <----
# [O][-]

execute as @s[scores={lookingDir=1,sneakToggle=0}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~2 ~-1 air run execute if block ~ ~1 ~-1 air run execute unless block ~ ~ ~-1 air run execute if block ~ ~-1 ~-1 air run execute at @s run function core:spells/breaking/break_check
execute as @s[scores={lookingDir=2,sneakToggle=0}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~2 ~1 air run execute if block ~ ~1 ~1 air run execute unless block ~ ~ ~1 air run execute if block ~ ~-1 ~1 air run execute at @s run function core:spells/breaking/break_check
execute as @s[scores={lookingDir=1,sneakToggle=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~2 ~-1 air run execute if block ~ ~1 ~-1 air run execute unless block ~ ~ ~-1 air run execute if block ~ ~-1 ~-1 air run execute at @s run function core:spells/breaking/break_check
execute as @s[scores={lookingDir=2,sneakToggle=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~2 ~1 air run execute if block ~ ~1 ~1 air run execute unless block ~ ~ ~1 air run execute if block ~ ~-1 ~1 air run execute at @s run function core:spells/breaking/break_check


# [o] 
# [O][P]
# [x][P] <----
# [O][-]

execute as @s[scores={lookingDir=1}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute if block ~ ~2 ~-1 air run execute if block ~ ~1 ~-1 air run execute unless block ~ ~ ~-1 air run execute if block ~ ~-1 ~-1 air run execute at @s run function core:spells/breaking/break_check
execute as @s[scores={lookingDir=2}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute if block ~ ~2 ~1 air run execute if block ~ ~1 ~1 air run execute unless block ~ ~ ~1 air run execute if block ~ ~-1 ~1 air run execute at @s run function core:spells/breaking/break_check

# [x] 
# [x][P]<----
# [x][P]
# [-][-]

#execute as @s[scores={lookingDir=1,sneakToggle=0}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~1 ~-1 air run execute unless block ~ ~ ~-1 air run execute if block ~ ~ ~-1 air run execute at @s run execute at @s run function core:spells/breaking/break_check
#execute as @s[scores={lookingDir=2,sneakToggle=0}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~1 ~1 air run execute unless block ~ ~ ~1 air run execute if block ~ ~ ~-1 air run execute at @s run execute at @s run function core:spells/breaking/break_check

# [x] 
# [x][P]
# [x][P]<----
# [-][-]

execute as @s[scores={lookingDir=1,sneakToggle=1..}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~1 ~-1 air run execute unless block ~ ~ ~-1 air run execute if block ~ ~ ~-1 air run execute at @s run function core:spells/breaking/break_check
execute as @s[scores={lookingDir=2,sneakToggle=1..}] at @s align xy positioned ~.5 ~0 ~ as @e if score @s playerID = @p playerID run execute as @s[type=minecraft:block_display] run execute unless block ~ ~1 ~1 air run execute unless block ~ ~ ~1 air run execute if block ~ ~ ~-1 air run execute at @s run function core:spells/breaking/break_check
