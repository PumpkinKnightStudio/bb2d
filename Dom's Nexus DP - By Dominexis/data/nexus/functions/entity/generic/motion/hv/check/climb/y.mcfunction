# Execute function at top of hitbox

execute if score #hitbox_y_temp nexus.value matches 00 positioned ~ ~0.0 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 02 positioned ~ ~1.0 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 04 positioned ~ ~2.0 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 06 positioned ~ ~3.0 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 08 positioned ~ ~4.0 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 10 positioned ~ ~5.0 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
scoreboard players add #subblock_y nexus.value 1

execute if score #hitbox_y_temp nexus.value matches 01 positioned ~ ~0.5 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 03 positioned ~ ~1.5 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 05 positioned ~ ~2.5 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 07 positioned ~ ~3.5 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
execute if score #hitbox_y_temp nexus.value matches 09 positioned ~ ~4.5 ~ run function nexus:entity/generic/motion/hv/check/climb/layer
scoreboard players add #subblock_y nexus.value 1