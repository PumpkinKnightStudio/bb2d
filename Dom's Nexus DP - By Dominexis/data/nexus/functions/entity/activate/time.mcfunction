# Activate if there is enough time

execute if score #terminate_entity_tick nexus.value matches 0 run function nexus:entity/check_tick
execute if score #terminate_entity_tick nexus.value matches 1 run scoreboard players set #entity_tick_complete_boolean nexus.value 0
execute if score #terminate_entity_tick nexus.value matches 0 run function nexus:entity/activate/activate