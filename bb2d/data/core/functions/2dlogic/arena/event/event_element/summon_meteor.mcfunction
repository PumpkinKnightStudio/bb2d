execute as @a at @s as @e if score @s playerID = @p playerID run execute as @s[type=armor_stand] at @s run summon falling_block ~ 7 ~ {BlockState:{Name:"minecraft:magma_block"},Glowing:1b,Time:1,DropItem:0b,Tags:["meteor"]}