scoreboard players add @s[scores={stunted=1}] stunt_time 1

execute as @a run execute if score @s stunt_time >= @s chr.default.stunTime run execute at @s as @e if score @s playerID = @p playerID run execute as @s[type=armor_stand] at @s run summon armor_stand ~ ~3.25 ~ {CustomNameVisible:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["temp_message"],CustomName:'{"text":"BROKE FREE!!","color":"green","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false}'}

execute as @a run execute if score @s stunt_time >= @s chr.default.stunTime run execute at @s as @e if score @s playerID = @p playerID run execute as @s[type=armor_stand] at @s run scoreboard players set @s impactCooldown 1

execute as @a run execute if score @s stunt_time >= @s chr.default.stunTime run scoreboard players set @s stunt_immune 200

execute as @a run execute if score @s stunt_time >= @s chr.default.stunTime run scoreboard players set @s stunted 0

scoreboard players set @a[scores={stunted=0}] stunt_time 0