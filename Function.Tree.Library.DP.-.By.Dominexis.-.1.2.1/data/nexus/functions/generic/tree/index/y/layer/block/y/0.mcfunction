# Iterate through space

scoreboard players operation #index_tree_y nexus.value -= #index_tree_y_layer_0 nexus.value
scoreboard players set #index_tree_y_layer_0 nexus.value 0

scoreboard players add #index_tree_y nexus.value 4
scoreboard players add #index_tree_y_layer_1 nexus.value 1

execute if score #index_tree_range nexus.value matches ..4 run function nexus:generic/tree/index/y/layer/end

scoreboard players set #index_tree_overflow_boolean nexus.value 0
execute if score #index_tree_y nexus.value < #index_tree_y_range nexus.value run scoreboard players set #index_tree_overflow_boolean nexus.value 1
execute if score #index_tree_overflow_boolean nexus.value matches 0 run function nexus:generic/tree/index/y/layer/block/y/1
execute if score #index_tree_y_layer_1 nexus.value matches 4.. run function nexus:generic/tree/index/y/layer/block/y/1