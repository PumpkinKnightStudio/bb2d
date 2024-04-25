

scoreboard players add @e[tag=orc.axe] orc.axe.timer 1
execute as @e[tag=orc.axe,scores={orc.axe.timer=..15}] at @s run tp ^ ^ ^0.75

scoreboard players remove @a[scores={axeDMGCooldown=1..}] axeDMGCooldown 1

#execute at @a as @e[type=armor_stand] at @s if score @s[scores={orc.axe.timer=16..38}] orc.axeID = @p playerID positioned -161 ~ ~ run tp @s ^ ^0.1 ^1 facing entity @p

execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=left] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=right,distance=0..1.5,sort=nearest,limit=1,scores={axeDMGCooldown=0}] damage 60

execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=right] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=left,distance=0..1.5,sort=nearest,limit=1,scores={axeDMGCooldown=0}] damage 60



execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=left,tag=lookingLeft] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=right,distance=0..1.5,sort=nearest,limit=1] motionBack 3
execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=left,tag=lookingRight] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=right,distance=0..1.5,sort=nearest,limit=1] motionBack -3

execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=right,tag=lookingLeft] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=left,distance=0..1.5,sort=nearest,limit=1] motionBack 3
execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=right,tag=lookingRight] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=left,distance=0..1.5,sort=nearest,limit=1] motionBack -3


execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=left] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=right,distance=0..1.5,sort=nearest,limit=1] motionY 1

execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=right] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=left,distance=0..1.5,sort=nearest,limit=1] motionY 1

execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=left] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=right,distance=0..1.5,sort=nearest,limit=1] axeDMGCooldown 2

execute as @e[tag=orc.axe,scores={orc.axe.timer=..15},tag=right] at @s run execute positioned ~9 ~ ~ run scoreboard players set @a[team=left,distance=0..1.5,sort=nearest,limit=1] axeDMGCooldown 2
execute as @e[tag=orc.axe,scores={orc.axe.timer=16..38}] at @s run tp ^ ^ ^-0.5
execute as @e[tag=orc.axe,scores={orc.axe.timer=42..}] run kill @s
