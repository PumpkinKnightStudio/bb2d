scoreboard players operation $block_id __variable__ = @s block
execute if score $block_id __variable__ matches 1 run scoreboard players remove @s block_1 1
execute if score $block_id __variable__ matches 17 run scoreboard players remove @s block_17 1
execute if score $block_id __variable__ matches 30 run scoreboard players remove @s block_30 1
execute if score $block_id __variable__ matches 46 run scoreboard players remove @s block_46 1
execute if score $block_id __variable__ matches 70 run scoreboard players remove @s block_70 1
scoreboard players set @s localBuilder.successPlace 0