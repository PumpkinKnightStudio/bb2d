scoreboard players set @s placing_block 5

execute if score @s block matches 1.. run function core:spells/building/passer

## REMOVE BLOCK WHEN REACHED 0
function bb2d_jmc:builderutil/calleft

#execute if score @s block matches 1 run scoreboard players remove @s block_1 1
execute if score @s block_1 matches 0 run clear @s minecraft:carrot_on_a_stick{block:1}



#execute if score @s block matches 46 run scoreboard players remove @s block_46 1
execute if score @s block_46 matches 0 run clear @s minecraft:carrot_on_a_stick{block:46}
#execute if score @s block matches 30 run scoreboard players remove @s block_30 1
execute if score @s block_30 matches 0 run clear @s minecraft:carrot_on_a_stick{block:30}

#execute if score @s block matches 70 run scoreboard players remove @s block_70 1
execute if score @s block_70 matches 0 run clear @s minecraft:carrot_on_a_stick{block:70}


## SERIES 2

#execute if score @s block matches 17 run scoreboard players remove @s block_17 1
execute if score @s block_17 matches 0 run clear @s minecraft:carrot_on_a_stick{block:17}