function core:2dlogic/headlock/unlock
scoreboard players set @s moveLocked 1
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:0b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["headlock","new"]}
tp @e[tag=headlock,tag=new] @s
scoreboard players operation @e[tag=headlock,tag=new] oid = @s oid
tag @e[tag=headlock,tag=new] remove new
tag @s add headlock
