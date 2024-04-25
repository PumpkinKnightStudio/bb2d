scoreboard players set @s[scores={bow_aim=1..}] inAction 1
scoreboard players set @s[scores={projectile_aim=1..}] inAction 1

scoreboard players set @s[scores={sword_swing=1..}] inAction 1
scoreboard players set @s[scores={sword_swing=..-1}] inAction 1
scoreboard players set @s[scores={placing_block=1..}] inAction 1

scoreboard players set @s[scores={magic_cast=1..}] inAction 1
scoreboard players set @s[scores={drinkingPotion=1..}] inAction 1



## SHIELD BLOCK DETECT ##

execute if predicate core:main_shield run scoreboard players set @s shieldSlot 1
execute if predicate core:off_shield run scoreboard players set @s shieldSlot 2
execute unless predicate core:off_shield run execute unless predicate core:main_shield run scoreboard players set @s shieldSlot 0

execute as @s[advancements={core:shield_used=true},scores={shieldOn=..7}] run scoreboard players add @s shieldOn 3


#execute as @s[advancements={core:shield_used=true},scores={shieldOn=8..9}] run scoreboard players add @s shieldOn 2

scoreboard players set @s[scores={shieldOn=1..}] inAction 1

execute as @s[advancements={core:shield_used=true}] run advancement revoke @s only core:shield_used



scoreboard players remove @s[scores={shieldOn=1..}] shieldOn 1
scoreboard players add @s[scores={shieldOn=..-1}] shieldOn 1

