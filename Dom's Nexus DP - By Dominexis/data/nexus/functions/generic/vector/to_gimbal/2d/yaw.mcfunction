# Get yaw from vector

scoreboard players operation #input_x nexus.value = #input_vector_z nexus.value
scoreboard players operation #input_y nexus.value = #input_vector_x nexus.value
scoreboard players operation #input_y nexus.value *= #-1 nexus.value
function nexus:generic/trigonometry/arctangent
scoreboard players operation #output_yaw nexus.value = #output nexus.value