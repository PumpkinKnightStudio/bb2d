
execute if score @s sneakToggle matches 1.. run execute if score @s animate matches 0 run execute if score @s spell_id matches 1 run function core:spells/morph/leo/swipeup/init


execute if score @s animate matches 0 run execute if score @s spell_id matches 1 run function core:spells/morph/leo/attack/init
execute if score @s animate matches 15.. run execute if score @s spell_id matches 1 run function core:spells/morph/leo/attack/init


execute if score @s animate matches 0 run execute if score @s spell_id matches 2 run function core:spells/morph/leo/reverse/init

execute if score @s animate matches 0 run execute if score @s spell_id matches 3 run function core:spells/morph/leo/reverse/init

execute if score @s animate matches 0 run execute if score @s spell_id matches 5 run function core:spells/morph/leo/rift/init

scoreboard players set @s leo.walkTime 0