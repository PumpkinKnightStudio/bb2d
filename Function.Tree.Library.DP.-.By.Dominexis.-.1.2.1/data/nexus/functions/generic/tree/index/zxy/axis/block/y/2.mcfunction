# Iterate through space

scoreboard players set #index_tree_y_layer_2 nexus.value 0
scoreboard players add #index_tree_y_layer_3 nexus.value 1

execute if score #index_tree_y_layer_3 nexus.value matches 4.. run function nexus:generic/tree/index/zxy/axis/block/y/3