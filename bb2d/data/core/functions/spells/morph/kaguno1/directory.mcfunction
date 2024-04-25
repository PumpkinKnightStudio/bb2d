execute if score @s kaguno1.dodgePower matches 100.. run execute if score @s sneakToggle matches 1.. run execute if score @s animate matches 1.. run scoreboard players set @s animate 0
execute if score @s kaguno1.dodgePower matches 100.. run execute if score @s sneakToggle matches 1.. run execute if score @s animate matches 0 run execute if score @s spell_id matches 1 run function core:spells/morph/kaguno1/dodge/init

execute if score @s animate matches 0 run execute if score @s spell_id matches 1 run function core:spells/morph/kaguno1/attack/init
execute if score @s animate matches 8.. run execute if score @s spell_id matches 1 run function core:spells/morph/kaguno1/attack/init


execute if score @s animate matches 0 run execute if score @s spell_id matches 2 run function core:spells/morph/leo/reverse/init

execute if score @s animate matches 0 run execute if score @s spell_id matches 3 run function core:spells/morph/leo/reverse/init

execute if score @s animate matches 0 run execute if score @s spell_id matches 5 run function core:spells/morph/leo/rift/init
