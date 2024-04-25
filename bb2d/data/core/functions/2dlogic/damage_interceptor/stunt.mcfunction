
execute as @a[scores={impactCooldown=16..}] at @s run scoreboard players set @s[scores={stunt_immune=0}] stunted 1


execute as @e[type=armor_stand,scores={impactCooldown=16..,stunt_immune=1..}] at @s run summon armor_stand ~ ~2.25 ~ {CustomNameVisible:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["stunt_message"],CustomName:'{"text":"STUNNED IMMUNE!","color":"green","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false}'}

## CANCEL STUNT
execute as @e[type=armor_stand,scores={impactCooldown=16..}] at @s run execute at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=player,scores={stunt_immune=1..}] at @s as @e[type=#core:playerid_link] if score @s playerID = @p playerID run execute as @s[type=armor_stand] at @s run scoreboard players set @s[type=armor_stand,scores={impactCooldown=14..}] impactCooldown 2



execute as @e[type=armor_stand,scores={impactCooldown=1..,stunted=1}] at @s run summon armor_stand ~ ~3.5 ~ {CustomNameVisible:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["stunt_message"],CustomName:'{"text":"STUNNED!","color":"gold","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false}'}

