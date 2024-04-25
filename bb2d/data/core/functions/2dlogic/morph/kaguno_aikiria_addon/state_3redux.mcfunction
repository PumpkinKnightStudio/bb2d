
execute as @p at @p run say hi
scoreboard players operation @s damagerID = @p playerID


scoreboard players operation @s damage += @p dealingDMG

scoreboard players operation @s attackFromDir = @p lookingDir


