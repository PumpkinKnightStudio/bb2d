# Run function at position

function #nexus:generic/tree/index







# Iterate through space

scoreboard players add #index_tree_y nexus.value 1
scoreboard players add #index_tree_y_layer_0 nexus.value 1

scoreboard players set #index_tree_overflow_boolean nexus.value 0
execute if score #index_tree_y nexus.value < #index_tree_y_range nexus.value run scoreboard players set #index_tree_overflow_boolean nexus.value 1
execute if score #index_tree_overflow_boolean nexus.value matches 0 run function nexus:generic/tree/index/y/layer/block/y/0
execute if score #index_tree_y_layer_0 nexus.value matches 4.. run function nexus:generic/tree/index/y/layer/block/y/0







# Check tick

function nexus:object/check_tick