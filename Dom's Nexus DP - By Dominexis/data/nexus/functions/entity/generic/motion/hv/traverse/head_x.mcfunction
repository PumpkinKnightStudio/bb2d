# Apply delta to nearest axis

scoreboard players operation #distance_head_x nexus.value += #delta_x nexus.value







# Change sub-block position

execute if score #sign_x nexus.value matches -1 run scoreboard players add #subblock_x nexus.value 1







# Change size of hitbox

scoreboard players add #hitbox_x nexus.value 1







# Apply offset to motion

execute if score #motion_end nexus.value matches 0 run scoreboard players add #motion_head_x nexus.value 500







# Run check function

execute if score #motion_end nexus.value matches 0 if score #sign_x nexus.value matches -1 positioned ~-0.5 ~0000 ~0000 run function nexus:entity/generic/motion/hv/check/main
execute if score #motion_end nexus.value matches 0 if score #sign_x nexus.value matches 01 run function nexus:entity/generic/motion/hv/check/main