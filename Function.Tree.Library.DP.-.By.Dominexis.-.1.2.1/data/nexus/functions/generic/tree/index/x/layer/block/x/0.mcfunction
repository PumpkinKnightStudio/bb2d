# Iterate through space

scoreboard players operation #index_tree_x nexus.value -= #index_tree_x_layer_0 nexus.value
scoreboard players set #index_tree_x_layer_0 nexus.value 0

scoreboard players add #index_tree_x nexus.value 4
scoreboard players add #index_tree_x_layer_1 nexus.value 1

execute if score #index_tree_range nexus.value matches ..4 run function nexus:generic/tree/index/x/layer/end

scoreboard players set #index_tree_overflow_boolean nexus.value 0
execute if score #index_tree_x nexus.value < #index_tree_x_range nexus.value run scoreboard players set #index_tree_overflow_boolean nexus.value 1
execute if score #index_tree_overflow_boolean nexus.value matches 0 run function nexus:generic/tree/index/x/layer/block/x/1
execute if score #index_tree_x_layer_1 nexus.value matches 4.. run function nexus:generic/tree/index/x/layer/block/x/1