# Iterate through space

scoreboard players set #index_tree_y nexus.value 0
scoreboard players set #index_tree_y_layer_0 nexus.value 0
scoreboard players set #index_tree_y_layer_1 nexus.value 0
scoreboard players set #index_tree_y_layer_2 nexus.value 0
scoreboard players set #index_tree_y_layer_3 nexus.value 0
scoreboard players set #index_tree_y_layer_4 nexus.value 0

scoreboard players add #index_tree_x nexus.value 1
scoreboard players add #index_tree_x_layer_0 nexus.value 1

execute if score #index_tree_x nexus.value < #index_tree_x_range nexus.value if score #index_tree_x_layer_0 nexus.value matches 4.. run function nexus:generic/tree/index/yx/axis/block/x/0
execute if score #index_tree_x nexus.value >= #index_tree_x_range nexus.value run function nexus:generic/tree/index/yx/axis/block/x/main