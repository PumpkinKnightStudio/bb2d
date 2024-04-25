# Iterate through space

scoreboard players operation #index_tree_x_layer_3 nexus.value *= #64 nexus.value
scoreboard players operation #index_tree_x nexus.value -= #index_tree_x_layer_3 nexus.value
scoreboard players set #index_tree_x_layer_3 nexus.value 0

scoreboard players add #index_tree_z nexus.value 256
scoreboard players add #index_tree_z_layer_4 nexus.value 1

execute if score #index_tree_range nexus.value matches ..256 run function nexus:generic/tree/index/zyx/layer/end

scoreboard players set #index_tree_overflow_boolean nexus.value 0
execute if score #index_tree_z nexus.value < #index_tree_z_range nexus.value if score #index_tree_y nexus.value < #index_tree_y_range nexus.value if score #index_tree_x nexus.value < #index_tree_x_range nexus.value run scoreboard players set #index_tree_overflow_boolean nexus.value 1
execute if score #index_tree_overflow_boolean nexus.value matches 0 run function nexus:generic/tree/index/zyx/layer/block/z/4
execute if score #index_tree_z_layer_4 nexus.value matches 4.. run function nexus:generic/tree/index/zyx/layer/block/z/4