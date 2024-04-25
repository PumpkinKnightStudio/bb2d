
execute as @s[type=armor_stand] at @s run summon armor_stand ~ ~3 ~ {CustomNameVisible:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["temp_message"],CustomName:'{"text":"Headshot!","color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false}'}

execute as @s[type=armor_stand] at @s run scoreboard players add @s[team=right,type=armor_stand,scores={impactCooldown=8..}] impactCooldown 15

execute as @s[type=armor_stand] at @s run scoreboard players set @s[team=right,type=armor_stand,scores={impactCooldown=..-1}] impactCooldown 15