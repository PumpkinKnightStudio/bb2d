execute if block ~ ~-1 ~1 air run execute if block ~ ~ ~1 air run tp @s ~-9 ~-1 ~1

execute if block ~ ~-1 ~1 air run execute unless block ~ ~ ~1 air run tp @s ~-9 ~1 ~1



execute unless block ~ ~-1 ~1 air run execute if block ~ ~ ~1 air run tp @s ~-9 ~ ~1

execute unless block ~ ~-1 ~1 air run execute unless block ~ ~ ~1 air run execute if block ~ ~1 ~1 air run tp @s ~-9 ~1 ~1




execute unless block ~ ~-1 ~1 air run execute unless block ~ ~ ~1 air run execute unless block ~ ~1 ~1 air run execute if block ~ ~-1 ~ air run tp @s ~-9 ~-1 ~





execute unless block ~ ~-1 ~1 air run execute unless block ~ ~ ~1 air run execute unless block ~ ~1 ~1 air run execute if block ~ ~-1 ~ air run tp @s ~-9 ~-1 ~

## PATCH BLOCK UNDER


execute if block ~ ~-1 ~1 air run execute if block ~ ~ ~1 air run execute if block ~ ~1 ~1 air run execute if block ~ ~-1 ~ air run tp @s ~-9 ~-1 ~

## END PATCH

execute if score @s[predicate=core:building_area] sneakToggle matches 1 run execute align z positioned ~ ~ ~-1 run execute if block ~ ~-1 ~1 air run execute if block ~ ~-2 ~1 air run tp @s ~-9 ~-2 ~1
