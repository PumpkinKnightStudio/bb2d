
## STONE
execute store success score @s block_1c run clear @s minecraft:carrot_on_a_stick{block:1} 0
execute if score @s block_1 matches 1.. run execute unless score @s block_1c matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Place Block (Stone)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100002,builder:1,block:1} 1

## TNT
execute store success score @s block_46c run clear @s minecraft:carrot_on_a_stick{block:46} 0
execute if score @s block_46 matches 1.. run execute unless score @s block_46c matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Place Block (TNT)","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100005,builder:1,block:46} 1

## COBWEB
execute store success score @s block_30c run clear @s minecraft:carrot_on_a_stick{block:30} 0
execute if score @s block_30 matches 1.. run execute unless score @s block_30c matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Place Block (Cobweb)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100006,builder:1,block:30} 1

## STONE PRESSURE PLATE
execute store success score @s block_70c run clear @s minecraft:carrot_on_a_stick{block:70} 0
execute if score @s block_70 matches 1.. run execute unless score @s block_70c matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Place Block (Landmine)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100007,builder:1,block:70} 1

execute store success score @s item_351c run clear @s minecraft:carrot_on_a_stick{item:351} 0
execute if score @s item_351 matches 1.. run execute unless score @s item_351c matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Throw an ink (Long range)","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100008,element:1,spell_id:3,item:351,asItem:1} 1


## STONE
execute store success score @s block_17c run clear @s minecraft:carrot_on_a_stick{block:17} 0
execute if score @s block_17 matches 1.. run execute unless score @s block_17c matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Place Block (Oak Wood)","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:4,Unbreakable:1b,CustomModelData:100014,builder:1,block:17} 1
