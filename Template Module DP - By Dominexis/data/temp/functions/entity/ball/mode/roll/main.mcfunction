# Apply gravity

scoreboard players operation #math_00 temp.value = #gravity nexus.value
scoreboard players operation #math_00 temp.value *= #missed_ticks nexus.value
scoreboard players operation @s nexus.mot_y += #math_00 temp.value







# Move entity along current trajectory

scoreboard players operation #math_00 temp.value = @s nexus.mot_x
scoreboard players operation #math_01 temp.value = @s nexus.mot_y
scoreboard players operation #math_02 temp.value = @s nexus.mot_z
scoreboard players operation #math_00 temp.value *= @s nexus.mot_x
scoreboard players operation #math_01 temp.value *= @s nexus.mot_y
scoreboard players operation #math_02 temp.value *= @s nexus.mot_z
scoreboard players operation #math_00 temp.value += #math_01 temp.value
scoreboard players operation #math_00 temp.value += #math_02 temp.value
scoreboard players operation #math_00 temp.value /= #1000 nexus.value

scoreboard players set #hitbox_offset nexus.value 0
scoreboard players set #hitbox_width nexus.value 375
scoreboard players set #hitbox_height nexus.value 375

execute if score #math_00 temp.value matches ..200 run scoreboard players set #collision_friction_numerator nexus.value 90
execute if score #math_00 temp.value matches ..200 run scoreboard players set #friction_numerator nexus.value 95
execute if score #math_00 temp.value matches 200.. run scoreboard players set #collision_friction_numerator nexus.value 95
execute if score #math_00 temp.value matches 200.. run scoreboard players set #friction_numerator nexus.value 97

scoreboard players set #fluid_friction_numerator nexus.value 70
scoreboard players set #climb_friction_numerator nexus.value 90
scoreboard players set #friction_denominator nexus.value 100

scoreboard players set #motion_climb_boolean nexus.value 2
scoreboard players set #motion_destroy_boolean nexus.value 0
scoreboard players set #motion_halt_boolean nexus.value 0
scoreboard players set #motion_missed_ticks_boolean nexus.value 1
scoreboard players set #motion_limit nexus.value 4000

execute positioned ~ ~1 ~ run function nexus:entity/generic/motion/hv/main







# Collisions

#execute if score #collision_x nexus.value matches 1 run function temp:entity/ball/mode/roll/collision/x
execute if score #collision_y nexus.value matches 1 run function temp:entity/ball/mode/roll/collision/y
execute if score #collision_z nexus.value matches 1 run function temp:entity/ball/mode/roll/collision/z







# Apply forces from kicks

scoreboard players operation #ball_x temp.value = @s nexus.x
scoreboard players operation #ball_y temp.value = @s nexus.y
scoreboard players operation #ball_z temp.value = @s nexus.z
scoreboard players operation #ball_prev_x temp.value = @s nexus.prev_x
scoreboard players operation #ball_prev_y temp.value = @s nexus.prev_y
scoreboard players operation #ball_prev_z temp.value = @s nexus.prev_z
scoreboard players set #ball_size temp.value 600
scoreboard players operation #ball_mass temp.value = @s nexus.mass
scoreboard players operation #ball_mot_x temp.value = @s nexus.mot_x
scoreboard players operation #ball_mot_y temp.value = @s nexus.mot_y
scoreboard players operation #ball_mot_z temp.value = @s nexus.mot_z
scoreboard players operation #ball_ang_vel_x temp.value = @s nexus.ang_vel_x
scoreboard players operation #ball_ang_vel_y temp.value = @s nexus.ang_vel_y
scoreboard players operation #ball_ang_vel_z temp.value = @s nexus.ang_vel_z

scoreboard players operation #ball_avg_x temp.value = #ball_x temp.value
scoreboard players operation #ball_avg_y temp.value = #ball_y temp.value
scoreboard players operation #ball_avg_z temp.value = #ball_z temp.value
scoreboard players operation #ball_avg_x temp.value += #ball_prev_x temp.value
scoreboard players operation #ball_avg_y temp.value += #ball_prev_y temp.value
scoreboard players operation #ball_avg_z temp.value += #ball_prev_z temp.value
scoreboard players operation #ball_avg_x temp.value /= #2 nexus.value
scoreboard players operation #ball_avg_y temp.value /= #2 nexus.value
scoreboard players operation #ball_avg_z temp.value /= #2 nexus.value





# Apply friction to angular velocity

execute store result score #boolean_x temp.value if score @s nexus.ang_vel_x matches ..-1
execute store result score #boolean_y temp.value if score @s nexus.ang_vel_y matches ..-1
execute store result score #boolean_z temp.value if score @s nexus.ang_vel_z matches ..-1

execute if score #boolean_x temp.value matches 1 run scoreboard players operation @s nexus.ang_vel_x *= #-1 nexus.value
execute if score #boolean_y temp.value matches 1 run scoreboard players operation @s nexus.ang_vel_y *= #-1 nexus.value
execute if score #boolean_z temp.value matches 1 run scoreboard players operation @s nexus.ang_vel_z *= #-1 nexus.value

scoreboard players operation @s nexus.ang_vel_x *= #friction_numerator nexus.value
scoreboard players operation @s nexus.ang_vel_y *= #friction_numerator nexus.value
scoreboard players operation @s nexus.ang_vel_z *= #friction_numerator nexus.value
scoreboard players operation @s nexus.ang_vel_x /= #friction_denominator nexus.value
scoreboard players operation @s nexus.ang_vel_y /= #friction_denominator nexus.value
scoreboard players operation @s nexus.ang_vel_z /= #friction_denominator nexus.value
execute if score @s nexus.ang_vel_x matches ..5 run scoreboard players operation @s nexus.ang_vel_x /= #2 nexus.value
execute if score @s nexus.ang_vel_y matches ..5 run scoreboard players operation @s nexus.ang_vel_y /= #2 nexus.value
execute if score @s nexus.ang_vel_z matches ..5 run scoreboard players operation @s nexus.ang_vel_z /= #2 nexus.value

execute if score #boolean_x temp.value matches 1 run scoreboard players operation @s nexus.ang_vel_x *= #-1 nexus.value
execute if score #boolean_y temp.value matches 1 run scoreboard players operation @s nexus.ang_vel_y *= #-1 nexus.value
execute if score #boolean_z temp.value matches 1 run scoreboard players operation @s nexus.ang_vel_z *= #-1 nexus.value







# Apply Magnus effect

scoreboard players operation #input_vector_1_x nexus.value = @s nexus.ang_vel_x
scoreboard players operation #input_vector_1_y nexus.value = @s nexus.ang_vel_y
scoreboard players operation #input_vector_1_z nexus.value = @s nexus.ang_vel_z
scoreboard players operation #input_vector_2_x nexus.value = @s nexus.mot_x
scoreboard players operation #input_vector_2_y nexus.value = @s nexus.mot_y
scoreboard players operation #input_vector_2_z nexus.value = @s nexus.mot_z

function nexus:generic/vector/cross_product

scoreboard players operation #output_vector_x nexus.value /= #20 nexus.value
scoreboard players operation #output_vector_y nexus.value /= #20 nexus.value
scoreboard players operation #output_vector_z nexus.value /= #20 nexus.value
execute if score #output_vector_x nexus.value matches ..-40 run scoreboard players set #output_vector_x nexus.value -40
execute if score #output_vector_y nexus.value matches ..-40 run scoreboard players set #output_vector_y nexus.value -40
execute if score #output_vector_z nexus.value matches ..-40 run scoreboard players set #output_vector_z nexus.value -40
execute if score #output_vector_x nexus.value matches 040.. run scoreboard players set #output_vector_x nexus.value 40
execute if score #output_vector_y nexus.value matches 040.. run scoreboard players set #output_vector_y nexus.value 40
execute if score #output_vector_z nexus.value matches 040.. run scoreboard players set #output_vector_z nexus.value 40
scoreboard players operation @s nexus.mot_x += #output_vector_x nexus.value
scoreboard players operation @s nexus.mot_y += #output_vector_y nexus.value
scoreboard players operation @s nexus.mot_z += #output_vector_z nexus.value







# Termination conditions

execute if score #motion_fire_boolean nexus.value matches 1 at @s run function temp:entity/ball/mode/generic/terminate
function nexus:entity/generic/void_check
execute if score #void_boolean nexus.value matches 1 at @s run function temp:entity/ball/mode/generic/terminate